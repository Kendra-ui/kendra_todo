import 'package:flutter/material.dart';
import 'package:kendra_todo/utils/custom_textfield/home1/dashboard.dart';
import 'package:kendra_todo/utils/custom_textfield/task/text4.dart';
import 'package:kendra_todo/widgets/setting/logout.dart';
import 'package:kendra_todo/widgets/setting/calendar.dart';

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
   return  const  MaterialApp(
    home: dashboard(),
   );
  }
  }

// ignore: camel_case_types
class dashboard extends StatefulWidget {
  const dashboard({super.key});

      @override
  State<dashboard> createState()  => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  int _currentIndex = 0;
  final List<Widget> screen = [

    const Dashboard(),
    const Text4(),
    const Calendar(),
    const Logout(),
    
  ];

  void onTappedBar(int index)
  {
    setState(() {

      _currentIndex = index;
    });
  
  }
  

  @override
  Widget build(BuildContext context) {
    // List<Widget> screens=[
    //   Container(child:  Center(
    //     child: Text("hellooooo"),
    //   ),),
    //    Container(child:  Center(child: Text("hiiiii")),)
    // ];
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body:screen[_currentIndex],
      
          

         bottomNavigationBar: BottomNavigationBar(
          onTap:(val){
            // print("hhhhhhhh gdgdgdgdg $val");

            setState(() {
              _currentIndex=val;
            });

          },
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          items:  const [
             BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 99, 12, 238),),
              label: (''),
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.list, color: Color.fromARGB(255, 99, 12, 238)),
              label: (''),
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, color:Color.fromARGB(255, 99, 12, 238)),
              label: (''),
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Color.fromARGB(255, 99, 12, 238),),
              label: (''),
              ),
              
          ],
          
        )
      
        );

  }}