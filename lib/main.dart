import 'package:flutter/material.dart';
import 'package:kendra_todo/home.dart';
import 'package:kendra_todo/utility/data_helper.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.instance.database; // Initialize the database
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home:const Home()
    );
  }

}


  class Homepage extends StatefulWidget{
    const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
  }
  
  class _HomepageState extends State<Homepage> with WidgetsBindingObserver{

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);

  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    //check if the app is inactive or detached
    if (state == AppLifecycleState.inactive || state == AppLifecycleState.detached) {
      return;
    }

    //check whether the app is paused
    //final isBackground = state = AppLifecycleState.paused;

    //print('app state: $AppLifecycleState');
  }

  @override
  Widget build(BuildContext context) {

    return  const Scaffold();
      
  }
  }
