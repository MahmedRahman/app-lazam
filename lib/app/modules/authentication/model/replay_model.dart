// To parse this JSON data, do
//
//     final replay = replayFromJson(jsonString);

import 'dart:convert';

Replay replayFromJson(String str) => Replay.fromJson(json.decode(str));

String replayToJson(Replay data) => json.encode(data.toJson());

class Replay {
    Replay({
        this.data,
        this.message,
        this.isSuccess,
    });

    dynamic data;
    String message;
    bool isSuccess;

    factory Replay.fromJson(Map<String, dynamic> json) => Replay(
        data: json["Data"],
        message: json["Message"],
        isSuccess: json["IsSuccess"],
    );

    Map<String, dynamic> toJson() => {
        "Data": data,
        "Message": message,
        "IsSuccess": isSuccess,
    };
}
