import 'package:sqflite/sqflite.dart';

abstract class DataBaseInterface{

Future<Database?> initialize();
Future createTable(Database database,Map<String, Object?> column);
Future fetchData(Database db, String email, String password);
Future addUserIfNotExists(Database database, String fullname, String email, String password);
Future addTodo(int userId, String title, String description, String createdDate, String startTime, bool completed);
Future deleteTodo(Map<String, dynamic> todoData, Database db, int userId);
Future getUser(Database db, String email);
Future getTasksOrderedByDate(int userId);
Future signIn(String email, String password);
}