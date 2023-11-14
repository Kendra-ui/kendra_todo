import 'package:sqflite/sqflite.dart';

abstract class DataBaseInterface{

Future<Database?> initialize();
Future createTable(Database database,Map<String, Object?> column);
  
Future fetchData(Database db, queryResult);
Future checkCredentials(Database db,Map<String, dynamic>? details );

}