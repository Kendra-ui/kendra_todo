import 'package:flutter/material.dart';
import 'package:kendra_todo/home.dart';
import 'package:kendra_todo/provider/todo_provider.dart';
//import 'package:kendra_todo/provider/todo_provider.dart';
import 'package:provider/provider.dart';
import 'provider/add_provider.dart';

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

    

@override
  void initState() {
     WidgetsFlutterBinding.ensureInitialized();
   
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:  (context) => UserProvider()),
        ChangeNotifierProvider(create:  (context) => TodoProvider()),




      ],
      child: 
        MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
          
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Home()
        ),
      
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
