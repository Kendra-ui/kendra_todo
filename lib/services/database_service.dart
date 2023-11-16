
// ignore_for_file: avoid_print
import 'package:kendra_todo/services/database_interface.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseService  implements DataBaseInterface{

   
    @override
  Future<Database?> initialize()async {
   //gets the default db location
    final databasePath = await getDatabasesPath();
  
    //accepts a string which is the path of db
    //path of the db; where join is used to combine the given path into a single path
    final path = join(databasePath, 'Signup.db');

    return await openDatabase(path, version: 1, onCreate: createDatabase);
    

  }


  @override
  Future createTable(Database database,Map<String, Object?> column)async{
      
      //adding tje insert queries for adding the info of the user
  
        
       int id= await database.insert(
      
      'Signup', column,
      
      );
      return id;
      
  }

   Future<void> createDatabase(Database db, int version) async {
    //here, we run the queries
    await db.execute('''
      CREATE TABLE Signup (
        id INTEGER PRIMARY KEY,
        fullname TEXT NOT NULL 
        email TEXT NOT NULL ,
        password TEXT NOT NULL,
        UNIQUE(fullname, email)
      )
    ''');
    
    
    await db.execute('''
      CREATE TABLE Task (
        id INTEGER PRIMARY KEY,
        title TEXT NOT NULL,
        descrption TEXT NOT NULL,
        createdDate TEXT NOT NULL,
        startTime TEXT NOT NULL,
        endTime TEXT NOT NULL,
        userId INTEGER NOT NULL,
        FOREIGN KEY(userId)  REFERENCES Signup(id) ON DELETE CASCADE
      )
''');
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

Future<bool> signIn(String email, String password) async {
    final Database? db = await initialize();
      if (db != null) {
      final emailAndPassword = await fetchData(db, email, password);

      if (emailAndPassword != null && emailAndPassword['password'] == password) {
        return true;
      }
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

@override
Future<int> addUserAndTasks(String fullName, String email, String password, List<Map<String, dynamic>> tasks) async {
    final Database? db = await initialize();
    if (db != null) {
      // Insert the user details into the Signup table
      int userId = await createUser(db, fullName, email, password);

      // Insert tasks associated with the user into the Tasks table
      await createTasksForUser(db, userId, tasks);

      return userId;
    }
    return -1;
  }

  Future<int> createUser(Database db, String fullName, String email, String password) async {
    final Map<String, dynamic> userData = {
      'fullname': fullName,
      'email': email,
      'password': password,
    };

    return await db.insert('Signup', userData);
  }

  Future<void> createTasksForUser(Database db, int userId, List<Map<String, dynamic>> tasks) async {
    for (Map<String, dynamic> task in tasks) {
      // Assign each task to the specified userId
      task['userId'] = userId;
      await db.insert('Tasks', task);
    }
  }
}

