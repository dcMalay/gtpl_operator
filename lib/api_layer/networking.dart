import 'dart:convert';
import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gtpl_operator/api_layer/model/get_ticket_model.dart';
import 'package:gtpl_operator/api_layer/model/raring_model.dart';
import 'package:gtpl_operator/api_layer/model/token_model.dart';
import 'package:http/http.dart' as http;

const baseUrl = "http://3.111.229.113:3000/";

const _secureStorage = FlutterSecureStorage();

//function to getting user token
Future<Token> getToken() async {
  final response =
      await http.get(Uri.parse('${baseUrl}oparetorlogin/J01KB427'));
  var jsonResponse = json.decode(response.body);
  await _secureStorage.write(key: "token", value: jsonResponse["token"]);
  if (response.statusCode == 200) {
    Map<String, dynamic> jsonResponse = json.decode(response.body);
    return Token.fromJson(jsonResponse);
  } else {
    throw Exception("Don't get any token ");
  }
}

//function to fetch the ticket data for a perticular user
Future<List<GetTicket>> fetchTicketData() async {
  var authToken = await _secureStorage.read(key: "token");

  final response = await http.get(
    Uri.parse('${baseUrl}allTickets/J01KB427'),
    headers: {
      HttpHeaders.authorizationHeader: authToken!,
      HttpHeaders.contentTypeHeader: 'application/json'
    },
  );
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    var resp = jsonResponse.reversed;
    final allTicketList = resp.map((data) => GetTicket.fromJson(data)).toList();
    return allTicketList;
  } else {
    throw Exception('Unexpected error occured!');
  }
}

//get a particular user ticket
Future<List<GetTicket>> fetchUserTicket(String user) async {
  var authToken = await _secureStorage.read(key: 'token');
  // print("operator from fetchTicketData---->${opreator}");
  final response = await http.get(
    Uri.parse('${baseUrl}ticket/$user'),
    headers: {
      HttpHeaders.authorizationHeader: authToken!,
      HttpHeaders.contentTypeHeader: 'application/json'
    },
  );
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => GetTicket.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}

//function to update the ticket status
Future<http.Response> postTicket(String ticketId, String status) async {
  // var authUser = await _secureStorage.read(key: "user");
  var authToken = await _secureStorage.read(key: "token");
  var operatorCode = await _secureStorage.read(key: "operator");
  // print("Token from postTicket---->${authToken}");
  // print("operator from postTicket---->${operatorCode}");
  // print("user from postTicket---->${authUser}");

  return http.post(
    Uri.parse("${baseUrl}update_status/$ticketId"),
    headers: {
      HttpHeaders.authorizationHeader: authToken!,
      HttpHeaders.contentTypeHeader: "application/json"
    },
    body: jsonEncode(
      <String, dynamic>{
        "oparetor_id": operatorCode,
        "status": "in-progress",
      },
    ),
  );

  // if (response.statusCode == 201) {
  //   var result = await UserTicket.fromJson(json.decode(response.body));
  //   print('result from postticket------>${result}');

  //   return result;
  // } else {
  //   throw Exception('post ticket action loading failed!---------->');
  // }
}

//function to get rating star
Future<Rating> getRating(String ticketId) async {
  final response =
      await http.get(Uri.parse("${baseUrl}get/star/J01KB427/$ticketId"));
  if (response.statusCode == 200) {
    var jsonResponse = json.decode(response.body);
    return Rating.fromJson(jsonResponse);
  } else {
    throw Exception('Unexpected error occured!');
  }
}
