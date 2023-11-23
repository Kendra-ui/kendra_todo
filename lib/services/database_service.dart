
// ignore_for_file: avoid_print
import 'dart:developer';

import 'package:kendra_todo/services/database_interface.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseService  implements DataBaseInterface{


    @override
  Future<Database> initialize() async {
   //gets the default db location
    final databasePath = await getDatabasesPath();
  
    //accepts a string which is the path of db
    //path of the db; where join is used to combine the given path into a single path
    final path = join(databasePath, 'Signup.db');

    return await openDatabase(path, 
    version: 1,
    onCreate: ((db, version) async{
      await db.execute('''
      CREATE TABLE Signup (
        userId INTEGER PRIMARY KEY,
        fullname TEXT NOT NULL,
        email TEXT NOT NULL ,
        password TEXT NOT NULL,
        UNIQUE(fullname, email)
      )
    ''');

    await db.execute('''
      CREATE TABLE todo (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        description TEXT NOT NULL,
        createdDate TEXT NOT NULL,
        startTime TEXT NOT NULL,
        completed INTEGER NOT NULL CHECK (completed IN (0, 1)),
        userId INTEGER NOT NULL,
        FOREIGN KEY(userId)  REFERENCES Signup(userId) 
        )
      '''); 

    }),
    onConfigure: _onConfigure);
    
  }


  @override
  Future createTable(Database database,Map<String, Object?> column)async{
      
      //adding tje insert queries for adding the info of the user
  
        
       int id= await database.insert(
      
      'Signup', column,
      
      );
      return id;
      
  }



// this is to permit the foreign key to work
Future _onConfigure(Database db) async {
  await db.execute('PRAGMA foreign_keys = ON');
}

@override
  Future<Map<String, dynamic>?> getUser(Database database, String email) async {

    print('kkkk ${database.isOpen}');
  try {
    final user = await database.query(
      'Signup',
      where: 'email = ?',
      whereArgs: [email],
    );

    if (user.isNotEmpty) {
     return user.first;
     //print('yes');
    }else{
      print('false');
    }
  } catch (e) {
    print('Error fetching user: $e');
  }
  
  return null;
}


@override
Future<Map<String, dynamic>?> fetchData(Database db,String email, String password) async {
    print('AAAAAAA ${db.isOpen}');


    try {
      final queryResult = await db.query(
    'Signup', 
    where: 'email = ?  AND password = ? ',
    whereArgs: [email, password]
   );
       if (queryResult.isNotEmpty) {
      return {
        'password': queryResult.first['password'],
      };
   }
  
    } catch (e) {
      print('$e');
    }
      print('AAAAAAA vvvvvvv${db.isOpen}');

    return null;



  //check if email exist
}

@override
  Future<bool> signIn(String email, String password) async {
    final Database db = await initialize();
    final emailAndPassword = await fetchData(db, email, password);
    

    if (emailAndPassword != null && emailAndPassword['password'] == password) {
      return true;
    }
  
    return false;
  }

  @override
  Future addUserIfNotExists(Database database, String fullname, String email, String password) async {
  try {
    // Check if the username or email already exists
  final isExisting = await checkIfUserExists(database, fullname, email);
  
  if (!isExisting) {
    // If the username or email doesn't exist, insert the new user data
    final userData = {
      'fullname': fullname,
      'email': email,
      'password': password,
    };
    
    final result = await createTable(database, userData);
    
    if (result != -1) {
      return true;
    } else {
    print('Username or email already exists!');
  }}
  } catch (e) {
    print('$e');
  }
}

Future<bool> checkIfUserExists(Database database, String fullname, String email) async {
  final List<Map<String, dynamic>> result = await database.rawQuery(
    'SELECT COUNT(*) AS count FROM Signup WHERE fullname = ? OR email = ?',
    [fullname, email],
  );

  final count = Sqflite.firstIntValue(result);
  return count != null && count > 0;
}



//helps to check if a task is complete or not for a particular user
 Future<bool?> toggle(Database db, int id, int userId) async {
    final List<Map<String, dynamic>> result = await db.query(
      'todo',
      columns: ['completed'],
      where: 'id = ? AND userId = ?' ,
      whereArgs: [id, userId],
    );

    if (result.isNotEmpty) {
      final completedValue = result.first['completed'];
      return completedValue == 1; // Return true if completedValue is 1, else false
    }
      return null; // Return null if the task with the specified ID isn't found
  }

  @override
  Future createTodo(String description,String createdDate,String startTime,bool completed, int userId) async {
    
    try{
      final db = await initialize();
   
       final set = await db.insert('todo',
      {
       
        'description': description,
        'createdDate': createdDate,
        'startTime': startTime,
        'completed': completed ? 1 : 0,
        'userId': userId,
    }
    );
   return ' yyyyyy $set';
        
      
  } catch (e) {
    print('Error adding todo to database: $e');
    
  }
    
  }
@override
  Future<List<Map<String, dynamic>>?> getTasksOrderedByDate(Database db, int userId) async {
    final List<Map<String, dynamic>> tasks = await db.rawQuery(
      'SELECT * FROM todo WHERE userId = ? ORDER BY createdDate ASC',
      [userId],
    );
    return tasks.isNotEmpty ? tasks : null;
  }


  //function which permits to delete a taskfrom the database
  @override
  Future<int> deleteTodo(int id, Database db, int userId) async{
    return db.delete('todo',
    where: '$id  AND userId = ?',
    whereArgs: [id, userId]);
  }

  @override
  Future<List<Map<String, dynamic>>?> currentUserTaskFromTodoTable(Database db, int userId) async {

  try {
    final List<Map<String, dynamic>> result = await db.query(
      'todo', 
      where: 'userId = ?', 
      whereArgs: [userId],
    );
print('jjjkjkjj $result');
    return result; // Returns the list of data fetched
  } catch (e) {
    print('Error fetching data from todo table: $e');
  }

  return null; }

  Future<int?> getUserIdForTodoId(Database db, int id) async {
    
    final List<Map<String, dynamic>> result = await db.query(
      'todo',
      columns: ['userId'],
      where: 'id = ?',
      whereArgs: [id],
    );
    if (result.isNotEmpty) {
      return result.first['userId'] as int?;
    }
    return null;
  }

Future fetchTodoData() async{
   final  db = await initialize();
   
   final queryResult = await db.query('todo');
   inspect(queryResult);
}

}







 

