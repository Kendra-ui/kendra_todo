class TodoModel{
  String title;
  String description;
  String startDate;
  String endDate;
  String createdTime;
  bool completed;

  TodoModel({required this.title, required this.description, required this.startDate, required this.endDate, required this.createdTime, required this.completed});

  //to toggle the task
  void toggleCompleted(){
    completed = !completed;
  }
}