import 'package:sqflite/sqflite.dart';

abstract class DataBaseInterface{

Future<Database?> initialize();
Future createTable(Database database,Map<String, Object?> column);
  
Future fetchData(Database db, String email, String password);

}