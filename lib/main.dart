import 'package:flutter/material.dart';
import 'package:kendra_todo/home.dart';
import 'package:kendra_todo/utils/custom_textfield/text3.dart';

void main() {
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
  
  class _HomepageState extends State<Homepage>{

  DateTime today = DateTime.now();


  @override
  Widget build(BuildContext context) {

    return  Scaffold();
      
  }
  }
