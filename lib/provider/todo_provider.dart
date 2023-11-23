// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'package:kendra_todo/services/database_service.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';



class TodoProvider extends ChangeNotifier{

 final DataBaseService _dataBaseService =DataBaseService();

  Database? db;

 List<Map<String, dynamic>> _todos = []; 

 List<Map<String, dynamic>> get todos => _todos;

 Future<void> dataBaseInitialize()async{

    db= await _dataBaseService.initialize();

    print("++++++++++++++++++++++++++++++++++++++++ initialize database is ${db!.isOpen}");
    notifyListeners();
 }
 
  late int _todoId; // Initial value for todoId, modify this as needed

  // Getter for todoId
  int get todoId => _todoId;

  // Method to set todoId
  void setTodoId(int id) {
    _todoId = id;
    // Notify listeners if applicable
     notifyListeners();
     }

int? userIdFromTodo;

  Future<void> setUserIdForTodoId(int id) async {
    try {
      final userId = await _dataBaseService.getUserIdForTodoId(db!,id);
    if (userId != null) {
      userIdFromTodo = userId;
      // Notify listeners or perform any other necessary actions after setting the userId
      notifyListeners();
    }
    } catch (e) {
      print('$e');
    }
  }

 Future<String> getTasksOrderedByDate(int userId) async {
  try {
    _todos = (await _dataBaseService.getTasksOrderedByDate(db!, userId))!;
    notifyListeners();
  } catch (e) {
    return e.toString();
  }return 'OK';
 }

 Future deleteTodo(int id, int userId) async{
   try {
    await _dataBaseService.deleteTodo(id, db!, userId);
    notifyListeners();
  } catch (e) {
    return e.toString();
  }
  String result = await getTasksOrderedByDate(userId);
  return result;
 }

 Future<String> addItems( String description, String createdDate, String startTime, bool completed, int userId,) async {
  try {
   final isadded =  await _dataBaseService.createTodo( description, createdDate, startTime, completed, userId);
    // Assuming the addTodo method performs the addition of the task to the database
    if (isadded != null) {
      print('$isadded');
      return '';
    } else { 
      print('no');
      return 'fail';
    }
  } catch (e) {
    // Handle the error appropriately, e.g., log the error or show an error message
    print('Error adding task: $e');
    return 'Error adding task';

  }
}


 Future toggle(int taskId, int userId) async{
try {
    await _dataBaseService.toggle(db!,taskId, userId);

} catch (e) {
    return e.toString();

} 
    String result = await getTasksOrderedByDate(userId);
    return result;
}

Future<void> userTask(int userId) async {
  final task = await _dataBaseService.currentUserTaskFromTodoTable(db!, userId);
  print('$task'); 
  
}
 }
 


