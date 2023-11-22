import 'package:flutter/src/painting/text_style.dart';

class TodoFields{
   final String title = 'title';
   final String description = 'description';
   final String startTime = 'startTime';
    String createdDate = 'createdDate';
   final String completed = 'completed';

   final List<String> allFields = [ ];
}


class Todo{
  String title;
  String description;
  DateTime startTime;
  //String endTime;
  String createdDate;
  bool completed;

  Todo({ required this.title,required this.description, required this.startTime, required this.createdDate,  this.completed = false, required TextStyle style});

  Map<String, Object?> toJson() {
    return {
      'title' : title,
      'description' : description,
      //convert the datetime to string
      'startTime' : startTime.toIso8601String(),
      //'endTime' : endTime,
      'createdDate' : createdDate,
      'completed' : completed ? 1:0
    };
  }

  //to toggle the task
  void toggleCompleted(){
    completed = !completed;
  }
}

