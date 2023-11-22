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
 
int _todoId = 0; // Initial value for todoId, modify this as needed

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

 Future addItems(int userId, int id, String description, String createdDate, String startTime, bool completed ) async {
  try {
   final isadded =  await _dataBaseService.createTodo(db!, id, description, createdDate, startTime, completed, userId);
    // Assuming the addTodo method performs the addition of the task to the database
    if (isadded != null) {
      await setUserIdForTodoId(id);
      print('good');
    } else {
      print('no');
    }
  } catch (e) {
    // Handle the error appropriately, e.g., log the error or show an error message
    return 'Error adding task: $e';
  }

  // Refresh the list after adding the task
  try {
    String result = await getTasksOrderedByDate(userId);
    return result;
  } catch (e) {
    // Handle the error from refreshing the list, if any
    return 'Error fetching updated tasks: $e';
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


 }
 


