// To parse this JSON data, do
//
//     final rating = ratingFromJson(jsonString);

import 'dart:convert';

List<Rating> ratingFromJson(String str) =>
    List<Rating>.from(json.decode(str).map((x) => Rating.fromJson(x)));

String ratingToJson(List<Rating> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Rating {
  Rating({
    required this.id,
    required this.userId,
    required this.oparetorId,
    required this.ticketId,
    required this.star,
    required this.v,
  });

  String id;
  String userId;
  String oparetorId;
  String ticketId;
  int star;
  int v;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        id: json["_id"],
        userId: json["user_id"],
        oparetorId: json["oparetor_id"],
        ticketId: json["ticket_id"],
        star: json["star"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "user_id": userId,
        "oparetor_id": oparetorId,
        "ticket_id": ticketId,
        "star": star,
        "__v": v,
      };
}
