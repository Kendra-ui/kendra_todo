// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';


//   class Note {
//   final int id;
//   final String description;

//   Note({required this.id, required this.description});

//   Note.fromMap(Map<String, dynamic> item):
//   id = item["id"], description= item["description"];

//   Map<String, Object> toMap(){
//     return {'id':id, 'description': description};
//   }
// }

// class SqliteService {
  
//   Future<Database> initializeDB() async {
    
//     //gets the default db location
//     String path = await getDatabasesPath();
    
//     //accepts a string which is the path of db
//     return openDatabase(

//       //path of the db; where join is used to combine the given path into a single path
//       join(path, 'database.db'),

//       //creates the db if it doesn't exist
//       onCreate: (database, version) async {
//          await database.execute( 
//            "CREATE TABLE Notes(id INTEGER PRIMARY KEY AUTOINCREMENT,description TEXT NOT NULL)",
//       );
//      },
//      version: 1,
//     );
//   }


//   Future<int> createItem(Note note) async{
//     int result = 0;
//     final Database db = await initializeDB();
//     final id = await db.insert(
//       'Notes', note.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace
//     );
//     return id;
//   }
// }


