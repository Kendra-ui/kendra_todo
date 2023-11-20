import 'package:flutter/foundation.dart';
import 'package:kendra_todo/services/database_service.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';



class TodoProvider extends ChangeNotifier{

 final DataBaseService _dataBaseService =DataBaseService();

  Database? db;

 List<Map<String, dynamic>> _todos = []; 

 List<Map<String, dynamic>> get todos => _todos;

 Future<String> getTasksOrderedByDate(int userId) async {
  try {
    _todos = (await _dataBaseService.getTasksOrderedByDate(userId))!;
    notifyListeners();
  } catch (e) {
    return e.toString();
  }return 'OK';
 }

 Future deleteTodo(Map<String, dynamic> todoData, int userId) async{
   try {
    await _dataBaseService.deleteTodo(todoData, db!, userId);
    notifyListeners();
  } catch (e) {
    return e.toString();
  }
  String result = await getTasksOrderedByDate(userId);
  return result;
 }

 Future addTodo(int userId, String title, String description, String createdDate, String startTime, bool completed) async {
  try {
    await _dataBaseService.addTodo(userId, title, description, createdDate, startTime, completed);
  } catch (e) {
  return e.toString();

  } 
  //this is to refresh the list so tht task are added in order
  String result = await getTasksOrderedByDate(userId);
  return result;
 }

 Future toggle(int taskId, int userId) async{
try {
    await _dataBaseService.toggle(taskId, userId);

} catch (e) {
    return e.toString();

} 
    String result = await getTasksOrderedByDate(userId);
    return result;
}
 }
 

