// ignore_for_file: avoid_print
import 'dart:async';
import 'dart:developer';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Signin{
  static const id = 'id';
  static const password = 'password';
  static const email = 'email';

  // static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;
  final tableName = 'Signin';

  // DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initialize();
    return _database!;
  }

  Future initialize() async {
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
      CREATE TABLE Signin (
        id INTEGER PRIMARY KEY,
        email TEXT NOT NULL,
        password TEXT NOT NULL
      )
    ''');
  }

//ADDING THE INFORMATION and passing the fields as parameters FOR SIGN UP
  Future insertSigninInfo( password,  email,) async {
    final db = await database;

    //adding tje insert queries for adding the info of the user
     await db.insert(
      'Signin', { 'email': email,'password': password});
      print('$email added in database successfully');
      return 'added';
      
  }

   Future<void> fetchData() async{
   final db = await database;
   final queryResult = await db.query(tableName);
   inspect(queryResult);
}
}

