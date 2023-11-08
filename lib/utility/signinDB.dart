import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SignIn{
  static final SignIn instance = SignIn._privateConstructor();
  static Database? _database;

  SignIn._privateConstructor();

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
    final path = join(databasePath, 'Signin.db');

    return await openDatabase(path, version: 1, onCreate: _createDatabase);
  }
//create the db and getting the version
  Future<void> _createDatabase(Database db, int version) async {
    //here, we run the queries
    await db.execute('''
 
      CREATE TABLE Signin (
        id INTEGER PRIMARY KEY
        email TEXT NOT NULL,
        password TEXT NOT NULL
      )
    ''');
  }

//ADDING THE INFORMATION and passing the fields as parameters FOR SIGN UP
  Future<int> insertSigninInfo(String password, String email,) async {
    final db = await database;

    //adding tje insert queries for adding the info of the user
    return await db.insert('Signin', { 'email': email,'password': password});
  }

  Future<Map<String, dynamic>?> getLoginInfo(String email) async {
    final db = await database;
    final result = await db.query('Signin', where: 'email = ?', whereArgs: [email]);

    if (result.isEmpty) {
      return null;
    }

    return result.first;
  }
}

