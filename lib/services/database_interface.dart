import 'package:sqflite/sqflite.dart';

abstract class DataBaseInterface{

Future<Database?> initialize();
Future createTable(Database database,Map<String, Object?> column);
Future fetchData(Database db, String email, String password);
Future addUserIfNotExists(Database database, String fullname, String email, String password);
Future createTodo( String description, String createdDate, String startTime, bool completed, int userId);
Future deleteTodo(int id, Database db, int userId);
Future getUser(Database db, String email);
Future getTasksOrderedByDate(Database db, int id);
Future signIn(String email, String password);
Future currentUserTaskFromTodoTable( int userId);
}