// ignore_for_file: avoid_print

import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static const id = 'id';
  static const fullname = 'fullname';
  static const password = 'password';
  static const email = 'email';
  // static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;
  final tableName = 'SignUp';

  // DatabaseHelper._privateConstructor();

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

    return await openDatabase(path, version: 1, onCreate: createDatabase);
  }
//create the db and getting the version
  Future<void> createDatabase(Database db, int version) async {
    //here, we run the queries
    await db.execute('''
      CREATE TABLE Signup (
        id INTEGER PRIMARY KEY,
        fullname TEXT NOT NULL UNIQUE
        email TEXT NOT NULL UNIQUE,
        password TEXT NOT NULL,
      )
    ''');
  }

//ADDING THE INFORMATION and passing the fields as parameters FOR SIGN UP
  Future insertSignupInfo(fullname, email, password) async {

     final db = await database;

    
      //adding tje insert queries for adding the info of the user
     await db.insert(
      'Signup', {'fullname': fullname, 'email': email,'password': password},
      //IN ORDER TO AVOID duplicates
      conflictAlgorithm: ConflictAlgorithm.replace
      );
      print('$fullname added in database successfully');
      
      return 'added';
      
  }


   Future fetchData(String email, String password) async{
   final db = await database;
   final List<Map<String, dynamic>> queryResult = await db.query(
    tableName,
    where: '$email  AND $password ',
    whereArgs: [email, password]
   );

//check if email exist
   if (queryResult.isNotEmpty) {
     return queryResult.first['password'];
   }
   return null;
}
}

