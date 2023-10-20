import 'package:flutter/material.dart';
import 'package:kendra_todo/main.dart';
import 'package:kendra_todo/widgets/info2.dart';
import 'package:table_calendar/table_calendar.dart';
//import 'package:table_calendar/table_calendar.dart';


class Info3 extends StatefulWidget {  

   const Info3({super.key,});

       @override
  State<Info3> createState()  => _Info3();
}

class _Info3 extends State<Info3> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
       width: double.infinity,
        height: double.infinity,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:50.0, left: 30),
                  child: IconButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    iconSize: MaterialStateProperty.all(15),
                    fixedSize: MaterialStateProperty.all(const Size(30, 30))                ),
                  icon:const Icon(Icons.arrow_back_ios, color: Colors.lightBlue,) , 
                  onPressed: () { 
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Info2()));

                   },)
                ),

                const Padding(
                  padding:  EdgeInsets.only(top:50.0, right: 70),
                  child: Text('Manage Your Time', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontWeight: FontWeight.bold, fontSize: 20),),
                )
              ],
            ),

             Padding(
               padding: const EdgeInsets.all(15.0),
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
                           
                              rowHeight: 43,
                              availableGestures: AvailableGestures.all,
                              onHeaderTapped:(val){
                              } ,
                              headerStyle: const HeaderStyle(
                              formatButtonVisible: false, 
                              titleCentered: true,),
                              focusedDay: DateTime.now(),
                              firstDay:  DateTime.utc(2023,01,01), 
                              lastDay:  DateTime.utc(2030,01,01)
                              // calendarStyle: ,
                              ),
                          ),
             ),

            Padding(
              padding:  const EdgeInsets.only(right:13.0, left:13, top:20),
              child: Container(
                width: 400,
                height: 100,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child:  Column(
                  children: [
                     Padding(
                      padding:  const EdgeInsets.only(right:190.0, top: 10),
                      child:   Text('Set task for ${DateTime.now().toString().split(' ')[0]}', style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: SizedBox(
                                width: 250,
                                height: 40,
                              child: 
                                TextField(
                                  decoration:  InputDecoration(
                                    filled: true,
                                    labelText: 'Task',
                                    labelStyle: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 1, fontSize: 15),
                                    fillColor: Color.fromRGBO(5, 36, 62, 1),
             
                                ),
                              ),
                                         ),
                        ),
                       
                        Padding(
                          padding: const EdgeInsets.only(top:1.0),
                          child: SizedBox(
                                width: 110,
                                child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(const Color(0xFF0EA5E9)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)
                                    )
                                  )
                                ),
                                onPressed: (){}, 
                                child: const Text('submit', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontSize: 15, color: Colors.white),)),
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
            ])
        )
      );
  }
  }