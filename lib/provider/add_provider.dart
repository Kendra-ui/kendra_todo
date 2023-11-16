// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:kendra_todo/services/database_service.dart';
import 'package:sqflite/sqflite.dart';


class UserProvider extends ChangeNotifier{


  final DataBaseService _dataBaseService =DataBaseService();

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

  Future signIn(String email, String password) async {
    final isLoggedIn = await _dataBaseService.fetchData(database!, email, password);
    
    
    if (isLoggedIn != null) {
      // Implement any actions you want to perform after successful sign-in
      return true;
    } else {
      return false;
    }
    
  }

  Future addUserIfNotExists(String fullname, String email, String password) async{
    final isPresent = await _dataBaseService.addUserIfNotExists(database!, fullname, email, password);

    if (isPresent != null) {
      return true;
    }
    return false;
  }

  Future<int> storeUser(String fullName, String email, String password, List<Map<String, dynamic>> tasks) async {
    int userId = await _dataBaseService.addUserAndTasks(fullName, email, password, tasks);

    if (userId != -1) {
      notifyListeners();
    }

    return userId;
  }

}


  
  



