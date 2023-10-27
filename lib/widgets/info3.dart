import 'package:flutter/material.dart';
import 'package:kendra_todo/widgets/info2.dart';
import 'package:table_calendar/table_calendar.dart';
//import 'package:table_calendar/table_calendar.dart';


class Info3 extends StatefulWidget {  

   const Info3({super.key,});

       @override
  State<Info3> createState()  => _Info3();
}

class _Info3 extends State<Info3> {
    DateTime today = DateTime.now();

    void _onDaySelected(DateTime day, DateTime focusedDay){
      setState(() {
        today = day;
      });
    }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
         width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:  const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF1253AA),
                Color(0xFF05243E),
              ],
            )
          ),
          child: Column(
            children: [
              
         SizedBox(height: MediaQuery.of(context).size.height/30),

            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width/20),
                SizedBox(
                      height: MediaQuery.of(context).size.height/20,
                      width: MediaQuery.of(context).size.width/13,
                      child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () { 
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Info2()));
                  
                   },
                   child: const Icon(Icons.arrow_back_ios, color: Colors.blue, size: 20,),)
                ),

              SizedBox(
                width: MediaQuery.of(context).size.width/20,
                height: MediaQuery.of(context).size.height/8,),
                const Text('Manage your time', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontWeight: FontWeight.bold, fontSize: 25),)
              ],
            ),

      
               Padding(
                 padding:  EdgeInsets.all(MediaQuery.of(context).size.height/40),
                 child: Container(
                  
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white,
                                      Color(0xFF1253AA),
                                    ],
                      ) 
                    ),
                              child: TableCalendar(
                                //permits to select another day from the date onf today
                                selectedDayPredicate: (day)=>isSameDay(day, today),
                                onDaySelected: _onDaySelected,
                                rowHeight: 43,
                                availableGestures: AvailableGestures.all,
                                //swipe to different months
                                onHeaderTapped:(val){
                                } ,
                                headerStyle: const HeaderStyle(
                                formatButtonVisible: false, 
                                titleCentered: true,),
                                focusedDay: today,
                                firstDay:  DateTime.utc(2023,01,01), 
                                lastDay:  DateTime.utc(2030,01,01)
                                // calendarStyle: ,
                                ),
                            ),
               ),
      
              Padding(
                padding:   EdgeInsets.all(MediaQuery.of(context).size.height/50),
                child: Container(
                  width: MediaQuery.of(context).size.width/1,
                  height: MediaQuery.of(context).size.height/7,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),

                  child:  Column(

                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height/50,),
                       Padding(
                         padding:  const EdgeInsets.only(right: 200),
                         child: Text('Set task for ${today.toString().split(' ')[0]}', style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.bold),),
                       ),
                      Row(
                        children: [

                          SizedBox(width: MediaQuery.of(context).size.width/50),

                           SizedBox(
                                width: MediaQuery.of(context).size.width/1.8,
                                height: MediaQuery.of(context).size.height/18,
                              child: 
                                const TextField(
                                  decoration:  InputDecoration(
                                    filled: true,
                                    labelText: 'Task',
                                    labelStyle: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 1, fontSize: 15),
                                    fillColor: Color.fromRGBO(5, 36, 62, 1),
                                       
                                ),
                                style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: "Poppins"),
                              ),
                                         ),
                          
                          SizedBox(
                            width: MediaQuery.of(context).size.width/100,
                            height: MediaQuery.of(context).size.height/15,),

                          SizedBox(
                                  width: MediaQuery.of(context).size.width/3.3,
                                  height: MediaQuery.of(context).size.height/18,                                child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(const Color(0xFF0EA5E9)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)
                                    )
                                  )
                                ),
                                onPressed: (){
                                  showDialog(context: context,
                                   builder: (context)=>  AlertDialog(
                                    title: const Text('SUCCESS', style: TextStyle(fontFamily: "Poppins"),),
                                    content: const Text('You have sucessfully added a task', style: TextStyle(fontFamily: "Poppins")),
                                    actions: <Widget>[
                                      TextButton(onPressed: (){
                                      Navigator.of(context).pop();
                                      }, 
                                      child: const Text('Okay',style: TextStyle(fontFamily: "Poppins")),
                                    )
                                    ],
                                   ));
                                }, 
                                child: const Text('submit', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontSize: 15, color: Colors.white),)),
                              ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
              ])
          ),
      )
      );
  }
  }