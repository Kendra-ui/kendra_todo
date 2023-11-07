import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:kendra_todo/models/note.dart';

class DatabaseHelper{
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    //gets the default db location
    final databasePath = await getDatabasesPath();

    //accepts a string which is the path of db
    //path of the db; where join is used to combine the given path into a single path
    final path = join(databasePath, 'Signup.db');

    return await openDatabase(path, version: 1, onCreate: _createDatabase);
  }
//create the db and getting the version
  Future<void> _createDatabase(Database db, int version) async {
    //here, we run the queries
    await db.execute('''
      CREATE TABLE Signup (
        id INTEGER PRIMARY KEY,
        fullname TEXT NOT NULL,
        email TEXT NOT NULL,
        password TEXT NOT NULL
      )
    ''');
  }

//ADDING THE INFORMATION and passing the fields as parameters
  Future<int> insertSignupInfo(String fullname, String password, String email,) async {
    final db = await database;

    //adding tje insert queries for adding the info of the user
    return await db.insert('Signup', {'fullname': fullname, 'email': email,'password': password});
  }

  Future<Map<String, dynamic>?> getLoginInfo(String fullname) async {
    final db = await database;
    final result = await db.query('Signup', where: 'fullname = ?', whereArgs: [fullname]);

    if (result.isEmpty) {
      return null;
    }

    return result.first;
  }
}

