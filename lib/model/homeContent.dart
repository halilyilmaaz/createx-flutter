// To parse this JSON data, do
//
//     final homecontent = homecontentFromJson(jsonString);

import 'dart:convert';

Homecontent homecontentFromJson(String str) =>
    Homecontent.fromJson(json.decode(str));

String homecontentToJson(Homecontent data) => json.encode(data.toJson());

class Homecontent {
  Homecontent({
    this.id,
    this.icerik,
  });

  String id;
  String icerik;

  factory Homecontent.fromJson(Map<String, dynamic> json) => Homecontent(
        id: json["id"],
        icerik: json["icerik"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "icerik": icerik,
      };
}
