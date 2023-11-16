class TodoModel{
  String title;
  String description;
  String startTime;
  String endTime;
  String createdDate;
  bool completed;

  TodoModel({required this.title, required this.description, required this.startTime, required this.endTime, required this.createdDate, required this.completed});

  Map toJson(){
    return {
      'title' : title,
      'description' : description,
      'startTime' : startTime,
      'endTime' : endTime,
      'createdDate' : createdDate,
    };
  }

  //to toggle the task
  void toggleCompleted(){
    completed = !completed;
  }
}