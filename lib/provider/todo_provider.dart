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
 

 Future<String> getTasksOrderedByDate(int userId) async {
  try {
    _todos = (await _dataBaseService.getTasksOrderedByDate(db!, userId))!;
    notifyListeners();
  } catch (e) {
    return e.toString();
  }return 'OK';
 }

 Future deleteTodo( int userId) async{
   try {
    final delete = await _dataBaseService.deleteTodo(userId);

    if (delete != null) {
      await fetchTodosFromDatabase(userId);
      return 'delete';
    }else{
      print('failed');
    }
    notifyListeners();
  } catch (e) {
    print('Error adding task: $e');
  }
  
 }

 Future<String> addItems(String description, String createdDate, String startTime, bool completed, int userId,) async {
  try {
   final isadded =  await _dataBaseService.createTodo( description, createdDate, startTime, completed, userId);
    // Assuming the addTodo method performs the addition of the task to the database
    if (isadded != null) {
      await fetchTodosFromDatabase(userId);
      
      return 'success';
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

Future fetchTodosFromDatabase(int userId) async {
  
      
      
      notifyListeners();
      
  }
 }
 


