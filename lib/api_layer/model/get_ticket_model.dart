// To parse this JSON data, do
//
//     final getTicket = getTicketFromJson(jsonString);

import 'dart:convert';

List<GetTicket> getTicketFromJson(String str) =>
    List<GetTicket>.from(json.decode(str).map((x) => GetTicket.fromJson(x)));

String getTicketToJson(List<GetTicket> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetTicket {
  GetTicket({
    required this.id,
    required this.userId,
    required this.oparetorId,
    required this.issueType,
    required this.description,
    required this.status,
    required this.isclosed,
    required this.createdAt,
    required this.v,
    this.closedate,
  });

  String id;
  String userId;
  String oparetorId;
  String issueType;
  String description;
  String status;
  int isclosed;
  DateTime createdAt;
  int v;
  DateTime? closedate;

  factory GetTicket.fromJson(Map<String, dynamic> json) => GetTicket(
        id: json["_id"],
        userId: json["user_id"],
        oparetorId: json["oparetor_id"],
        issueType: json["issue_type"],
        description: json["description"],
        status: json["status"],
        isclosed: json["isclosed"],
        createdAt: DateTime.parse(json["createdAt"]),
        v: json["__v"],
        closedate: json["closedate"] == null
            ? null
            : DateTime.parse(json["closedate"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "user_id": userId,
        "oparetor_id": oparetorId,
        "issue_type": issueType,
        "description": description,
        "status": status,
        "isclosed": isclosed,
        "createdAt": createdAt.toIso8601String(),
        "__v": v,
        "closedate": closedate == null ? null : closedate!.toIso8601String(),
      };
}
