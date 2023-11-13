import 'package:flutter/material.dart';
import 'package:kendra_todo/utils/custom_textfield/task/info.dart';
import 'package:sqflite/sqflite.dart';
//import 'package:kendra_todo/widgets/info.dart';

// ignore: must_be_immutable
class Button1 extends StatelessWidget {
     Database? datatBaseInstane;

   Button1({super.key, this.datatBaseInstane});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 106, 137, 238),
      body:  SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.only(top:250.0, right: 2, left:2),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            decoration: BoxDecoration(
              color:  Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: 
             Column(
              children: [
                Padding(
                      padding: const EdgeInsets.only(top:60),
                      child: Container(
                        width: 350,
                        height: 40,
                        decoration:  BoxDecoration(
                          color: const Color(0xFF05243E),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: 
                        const Padding(
                          padding:  EdgeInsets.only(top:3.0, left: 20),
                          child: Row(
                            children: [
                          Icon(Icons.check_box_outlined, color: Colors.white, size: 20,),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('task', style: TextStyle(fontFamily: 'Poppins', fontSize: 16,letterSpacing: 1,color: Colors.white),),
                          ),
                            ],
                          ),
          ),
        ),
             ),
            
                  const Padding(
                    padding:  EdgeInsets.only(top:30.0, right: 28, left: 28),
                    child: TextField(
                      decoration:  InputDecoration(
                        labelText: "Description",
                        labelStyle: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 1),
                        filled: true,
                        fillColor: Color.fromRGBO(5, 36, 62, 1),
                        prefixIcon:  Padding(padding: EdgeInsets.only(bottom:110),
                        child: Icon(Icons.line_weight, color: Colors.white,),) 
                      ),
                     style: TextStyle(fontSize: 15, color: Colors.white, fontFamily: "Poppins"),
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(top:25.0, right: 30, left: 30),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 170,
                          height: 40,
                        child: 
                          TextField(
                            decoration:  InputDecoration(
                              labelText: "Date",
                              labelStyle: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 1),
                              filled: true,
                              fillColor: Color.fromRGBO(5, 36, 62, 1),
                              prefixIcon:  Padding(padding: EdgeInsets.only(top:5),
                              child: Icon(Icons.calendar_month, color: Colors.white,size: 20,),),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5))
                              )
                              
                            ),
                           style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                  
                        SizedBox(
                          width: 170,
                          height: 40,
                        child: 
                          TextField(
                            decoration:  InputDecoration(
                              labelText: "Time",
                              labelStyle: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 1),
                              filled: true,
                              fillColor: Color.fromRGBO(5, 36, 62, 1),
                              prefixIcon:  Padding(padding: EdgeInsets.only(top:5),
                              child: Icon(Icons.timelapse, color: Colors.white,size: 20,),),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5))
                              ) 
                            ),
                           style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:30, left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                          ),
                          onPressed: (){
                            showDialog(context: context,
                                     builder: (context)=>  AlertDialog(
                                      title: const Text('DELETE', style: TextStyle(fontFamily: "Poppins"),),
                                      content: const Text('Do you want to delete this task?', style: TextStyle(fontFamily: "Poppins")),
                                      actions: <Widget>[
                                        TextButton(onPressed: (){
                                        Navigator.of(context).pop();
                                        }, 
                                        child: const Text('No',style: TextStyle(fontFamily: "Poppins")),
                                      ),
                                      TextButton(onPressed: (){
                                        Navigator.of(context).pop();
                                        }, 
                                        child: const Text('Continue',style: TextStyle(fontFamily: "Poppins")),
                                      )
                                      ],
                                     ));
                          }, 
                          child: const Text('cancel', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontSize: 15, color: Colors.black),)),
                      ),
                  
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                          ),
                          onPressed: (){
                            
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Info(datatBaseInstane: datatBaseInstane)));

                          }, 
                          child: const Text('create', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontSize: 15, color: Colors.white),)),
                        ),
                     ],
                    ),
                  )
              ],
              
          )
          )
          ),
          
      )
        );
  }
}