// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:developer';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static Database? _database;
  final tableName = 'Signup';
  final todotable = 'Todo';

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initialize();
    return _database!;
  }

 Future<Database> initialize() async {
    //gets the default db location
    final databasePath = await getDatabasesPath();
  
    //accepts a string which is the path of db
    //path of the db; where join is used to combine the given path into a single path
    final path = join(databasePath, 'Signup.db');

    return await openDatabase(path, version: 1, onCreate: ((db, version)  async{

       await db.execute('''
      CREATE TABLE Signup (
        id INTEGER PRIMARY KEY,
        fullname TEXT NOT NULL UNIQUE,
        email TEXT NOT NULL UNIQUE,
        password TEXT NOT NULL,
      )''');

      await db.execute('''
    CREATE TABLE todo(
        id INTEGER PRIMARY KEY,
        description TEXT NOT NULL,
        createdDate TEXT NOT NULL,
        startTime TEXT NOT NULL,
        completed INTEGER NOT NULL CHECK (completed IN(0,1)),
        userId INTEGER NOT NULL,
        FOREIGN KEY(userId)  REFERENCES Signup(userId) 
      )
''');

    }));

    
  }



//ADDING THE INFORMATION and passing the fields as parameters FOR SIGN UP
  Future insertSignupInfo(fullname, email, password) async {

     final db = await database;

    
      //adding tje insert queries for adding the info of the user
     await db.insert(
      'Signup', {'fullname': fullname, 'email': email,'password': password},
      );
      print('$fullname added in database successfully');
      
      return 'added';
      
  }

  Future insertTodoInfo(id, description, createdDate, startTime, completed, userId) async {

    try {
       final db = await database;

    
      //adding tje insert queries for adding the info of the user
     await db.insert(
      'todo', {'id': id, 'description': description,'createdDate': createdDate, 'startTime': startTime, 'completed': completed ? 1:0, 'userId': userId},
      );
      print('added in database successfully');
      
      return 'added';
    } catch (e) {
      print('$e');
    }
      
  }


Future fetchTodoData() async{
   final  db = await database;
   final queryResult = await db.query(todotable);
   inspect(queryResult);
}
}

