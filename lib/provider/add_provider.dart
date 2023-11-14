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
      print('User signed in successfully.');
    } else {
      print('Invalid credentials or user not found.');
    }
    
  }
}


  
  



