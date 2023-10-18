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

 int _currentIndex = 0;
  final List<Widget> screen = [
    const Text3(),

  ];

  void onTappedBar(int index)
  {
    setState(() {

      _currentIndex = index;
    });
  }
  

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
          backgroundColor:  const Color.fromARGB(255, 223, 202, 252),
          body:screen[_currentIndex],
          
          

         bottomNavigationBar: BottomNavigationBar(
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items:  const [
             BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 99, 12, 238),),
              label: ('home'),
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.list, color: Color.fromARGB(255, 99, 12, 238)),
              label: ('todolist'),
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, color:Color.fromARGB(255, 99, 12, 238)),
              label: ('calendar'),
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Color.fromARGB(255, 99, 12, 238),),
              label: ('settings'),
              ),
              
          ],
          
        )
      );

  }
  }
