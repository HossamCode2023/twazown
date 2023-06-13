// To parse this JSON data, do
//
//     final testModel = testModelFromJson(jsonString);

import 'dart:convert';

TestModel testModelFromJson(String str) => TestModel.fromJson(json.decode(str));

String testModelToJson(TestModel data) => json.encode(data.toJson());

class TestModel {
    String name;
    String job;
    // String id;
    // DateTime createdAt;

    TestModel({
        required this.name,
        required this.job,
        // required this.id,
        // required this.createdAt,
    });

    factory TestModel.fromJson(Map<String, dynamic> json) => TestModel(
        name: json["name"],
        job: json["job"],
        // id: json["id"],
        // createdAt: DateTime.parse(json["createdAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "job": job,
        // "id": id,
        // "createdAt": createdAt.toIso8601String(),
    };
}
