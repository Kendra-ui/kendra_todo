import 'package:flutter/material.dart';
import 'package:kendra_todo/utils/custom_textfield/home1/dashboard.dart';
import 'package:kendra_todo/utils/custom_textfield/task/todo_list.dart';
import 'package:kendra_todo/widgets/setting/logout.dart';
import 'package:kendra_todo/widgets/setting/calendar.dart';


// ignore: camel_case_types, must_be_immutable
class NavigationBar extends StatefulWidget {
     

   const NavigationBar({super.key});

      @override
  State<NavigationBar> createState()  => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
   

  int _currentIndex = 0;
  late final List<Widget> screen = [

     Dashboard(createdDate: '', startTime: '',),
    const Todolist(startTime: '', createdDate: '',),
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