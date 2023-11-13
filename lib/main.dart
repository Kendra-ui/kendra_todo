import 'package:flutter/material.dart';
import 'package:kendra_todo/home.dart';
import 'package:kendra_todo/utility/data_helper.dart';
import 'package:sqflite/sqflite.dart';

void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  // await DatabaseHelper.instance.database; // Initialize the database
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
    const MyApp({super.key});
  

  @override
  State<MyApp> createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {

    final DatabaseHelper _databaseHelper = DatabaseHelper();
    late Database datatBaseInstane;

@override
  void initState() {
     WidgetsFlutterBinding.ensureInitialized();
   datatBaseInstane =_databaseHelper.initialize();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(datatBaseInstane: datatBaseInstane,)
    );
  }
  


}


  class Homepage extends StatefulWidget{
    const Homepage({super.key});

  

  @override
  State<Homepage> createState() => _HomepageState();
  }
  
  class _HomepageState extends State<Homepage> with WidgetsBindingObserver{
//     DatabaseHelper _databaseHelper = DatabaseHelper();
//     Database datatBaseInstane;

// @override
//   void initState() {
//      WidgetsFlutterBinding.ensureInitialized();
//    datatBaseInstane =_databaseHelper.initialize();
//     super.initState();
//   }
  @override
  Widget build(BuildContext context) {

    return  const Scaffold();
      
  }
  }
