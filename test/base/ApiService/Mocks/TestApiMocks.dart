// To parse this JSON data, do
//
//     final correctPostBodyParams = correctPostBodyParamsFromMap(jsonString);

import 'dart:convert';

class CorrectPostBodyParams {
    CorrectPostBodyParams({
        this.title,
        this.body,
        this.userId,
    });

    String? title;
    String? body;
    int? userId;

    factory CorrectPostBodyParams.fromJson(String str) => CorrectPostBodyParams.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CorrectPostBodyParams.fromMap(Map<String, dynamic> json) => CorrectPostBodyParams(
        title: json["title"] == null ? null : json["title"],
        body: json["body"] == null ? null : json["body"],
        userId: json["userId"] == null ? null : json["userId"],
    );

    Map<String, dynamic> toMap() => {
        "title": title == null ? null : title,
        "body": body == null ? null : body,
        "userId": userId == null ? null : userId,
    };
}

// To parse this JSON data, do
//
//     final correctPostPutParams = correctPostPutParamsFromMap(jsonString);



class CorrectPostPutParams {
    CorrectPostPutParams({
      required  this.id,
     required   this.title,
     required   this.body,
     required   this.userId,
    });

    int? id;
    String? title;
    String? body;
    int? userId;

    factory CorrectPostPutParams.fromJson(String str) => CorrectPostPutParams.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CorrectPostPutParams.fromMap(Map<String, dynamic> json) => CorrectPostPutParams(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        body: json["body"] == null ? null : json["body"],
        userId: json["userId"] == null ? null : json["userId"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "body": body == null ? null : body,
        "userId": userId == null ? null : userId,
    };
}
