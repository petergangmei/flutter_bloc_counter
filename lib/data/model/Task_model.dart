// To parse this JSON data, do
//
//     final tasks = tasksFromJson(jsonString);

import 'dart:convert';

List<Tasks> tasksFromJson(String str) => List<Tasks>.from(json.decode(str).map((x) => Tasks.fromJson(x)));

String tasksToJson(List<Tasks> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Tasks {
    Tasks({
       required this.task,
       required this.completed,
       required this.id,
    });

    String task;
    bool completed;
    int id;

    factory Tasks.fromJson(Map<String, dynamic> json) => Tasks(
        task: json["task"],
        completed: json["completed"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "task": task,
        "completed": completed,
        "id": id,
    };
}
