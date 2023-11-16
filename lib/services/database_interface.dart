import 'package:sqflite/sqflite.dart';

abstract class DataBaseInterface{

Future<Database?> initialize();
Future createTable(Database database,Map<String, Object?> column);
Future fetchData(Database db, String email, String password);
Future addUserIfNotExists(Database database, String fullname, String email, String password);
Future addUserAndTasks(String fullName, String email, String password, List<Map<String, dynamic>> tasks);

}