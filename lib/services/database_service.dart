
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
        fullname TEXT NOT NULL UNIQUE
        email TEXT NOT NULL UNIQUE,
        password TEXT NOT NULL,
      )
    ''');
  }
@override
Future fetchData(Database db,String email, String password) async {
  
    final queryResult = await db.query(
    'Signup', 
    where: '$email = ?  AND $password = ? ',
    whereArgs: [email, password]
   );

  //check if email exist
   if (queryResult.isNotEmpty) {
     return queryResult.first;
   }
   return null;
  }

Future<bool> signIn(String email, String password) async {
    final Database? db = await initialize();
      final emailAndPassword = await fetchData(db!, email, password);

      if (emailAndPassword != null) {
        return true;
      
    }

    return false;
  }
}

  
