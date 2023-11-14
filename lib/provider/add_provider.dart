import 'package:flutter/material.dart';
import 'package:kendra_todo/services/database_interface.dart';
import 'package:kendra_todo/services/database_service.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';

class UserProvider extends ChangeNotifier{
  DataBaseService _dataBaseService =DataBaseService();

  Database? database;


 Future<void> dataBaseInitialize()async{

    database= await _dataBaseService.initialize();

    print("++++++++++++++++++++++++++++++++++++++++ initialize database is ${database!.isOpen}");
    notifyListeners();

    


  }

  Future<bool> signUp(String fullName, String email, String password)async{
    int id= await _dataBaseService.createTable(database!,{'fullname': fullName, 'email': email,'password': password} );

    if(id ==0){
      return false;
    }

    return true;
  }

  Future fetchData(queryResult) async{
    database = await _dataBaseService.fetchData(database!, queryResult);
  }

  // Future<bool> checkCredentials(String email, String passwoord) async {
  //   if (database == null) {
  //     return false;
  //   }

  //   try {
  //   final List<Map<String, dynamic>> queryResult = await database!.query(
  //     'Signup',
  //     where: 'email = ? AND password = ?',
  //     whereArgs: [email, password],
  //   );

  //   // If a user with the provided email and password exists, return true
  //   return queryResult.isNotEmpty;
  // } catch (e) {
  //   // Handle any potential errors while checking credentials
  //   print('Error checking credentials: $e');
  //   return false;
  // }
  }


  
