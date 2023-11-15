// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kendra_todo/utils/custom_textfield/home1/dashboard.dart';
import 'package:kendra_todo/utils/custom_textfield/task/info.dart';

// ignore: must_be_immutable
class Todolist extends StatefulWidget {

   const Todolist({super.key});

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  final dateInput = TextEditingController();
  final timeInput = TextEditingController();


  @override
  void initState() {
    dateInput.text = '';
    timeInput.text ='';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
         width: double.infinity,
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
                
        child:   Padding(
          padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Column(
            children: [
      
              SizedBox(
                height: MediaQuery.of(context).size.height/50,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
              child: SizedBox(
                 height: MediaQuery.of(context).size.height/16,
      
                           child: TextFormField(
                            decoration:  InputDecoration(
                              labelText: "Search by task title",
                              filled: true,
                              fillColor: const Color(0xFF102D53),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              
                              suffixIcon: const Padding(padding: EdgeInsets.all(5),
                              child: Icon(Icons.search, color: Color.fromARGB(255, 158, 157, 157),),)
                            ),
                           ),
                         ),
            ),
            const SizedBox(
              width: 10
            ),
              
            Expanded(
              child: SizedBox(
                 height: MediaQuery.of(context).size.height/16,
      
                           child: TextFormField(
                            decoration:  InputDecoration(
                              labelText: "Sort By:",
                              filled: true,
                              fillColor: const Color(0xFF102D53),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              prefixIcon: const Padding(padding: EdgeInsets.all(5),
                              child: Icon(Icons.filter_list, size: 25, color: Colors.grey,)
                              ),
                              suffixIcon: const Padding(padding: EdgeInsets.all(5),
                              child: Icon(Icons.arrow_drop_down, color: Color.fromARGB(255, 158, 157, 157), size: 30,),)
                            ),
                           ),
                         ),
            ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
               GestureDetector(
                 onTap: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  const Dashboard()));
                 },
                 child: 
                  SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: const Text('Tasks List', style: TextStyle(letterSpacing: 1, color: Colors.white, fontFamily: 'Poppins', fontSize: 14),)),
                 ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              
              Container(
                width: MediaQuery.of(context).size.width/1.1,
                height: MediaQuery.of(context).size.height/13,
      
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: 
                 Padding(
                  padding:  const EdgeInsets.only(top:8.0, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        children: [
                      Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                      Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                        child: const Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                      )
                      
                    ],
                  ),
                ),
              ),
      
              SizedBox(height: MediaQuery.of(context).size.height/20,),
           
                     Container(
                       width: MediaQuery.of(context).size.width/1.1,
                       height: MediaQuery.of(context).size.height/13,
      
                       decoration:  BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(5)
                       ),
                       child: 
                        Padding(
                         padding:  const EdgeInsets.only(top:8.0, left: 20),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             const Column(
                               children: [
                             Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                             Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                               ],
                             ),
                             Padding(
                               padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                               child: const Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                             )
                             
                           ],
                         ),
                       ),
                     ),
      
              SizedBox(height: MediaQuery.of(context).size.height/20,),
      
        
                     Container(
                       width: MediaQuery.of(context).size.width/1.1,
                       height: MediaQuery.of(context).size.height/13,
      
                       decoration:  BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(5)
                       ),
                       child: 
                        Padding(
                         padding:  const EdgeInsets.only(top:8.0, left: 20),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             const Column(
                               children: [
                             Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                             Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                               ],
                             ),
                             Padding(
                               padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                               child: const Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                             )
                             
                           ],
                         ),
                       ),
                     ),
      
              SizedBox(height: MediaQuery.of(context).size.height/20,),
      
        
                       Container(
                         width: MediaQuery.of(context).size.width/1.1,
                         height: MediaQuery.of(context).size.height/13,
      
                         decoration:  BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(5)
                         ),
                         child: 
                          Padding(
                           padding:  const EdgeInsets.only(top:8.0, left: 20),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Column(
                                 children: [
                               Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                               Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                                 ],
                               ),
                               Padding(
                                 padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                                 child: const Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                               )
                               
                             ],
                           ),
                         ),
                       ),
        
              SizedBox(
                height: MediaQuery.of(context).size.height/10,),
              Padding(
                padding: const EdgeInsets.only(left:250),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height/13,
                  width: MediaQuery.of(context).size.width/7,
                  child: FloatingActionButton(
                    backgroundColor: Colors.lightBlue,
                     onPressed: () { 
                      showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return  SizedBox(
                                height: 700,
                                width: double.infinity,
                                child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 700,
                            decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(10)
                            ),
                            child: 
                             Column(
                  children: [
                  Padding(
                        padding: const EdgeInsets.only(top:29),
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/15,
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
                            
                     Padding(
                      padding:  const EdgeInsets.only(top: 15),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height/5,
                        width: MediaQuery.of(context).size.width/1.2,
                        child: const TextField(
                          decoration:  InputDecoration(
                            labelText: "Description",
                            labelStyle: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 1),
                            filled: true,
                            fillColor: Color.fromRGBO(5, 36, 62, 1),
                            prefixIcon:  Padding(padding: EdgeInsets.only(bottom:90),
                            child: Icon(Icons.line_weight, color: Colors.white,),) 
                          ),
                         style: TextStyle(fontSize: 15, color: Colors.white, fontFamily: "Poppins"),
                        ),
                      ),
                    ),
                    
                     Padding(
                       padding: const EdgeInsets.only(top:10),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width:MediaQuery.of(context).size.width/30),
                           SizedBox(
                            width: MediaQuery.of(context).size.width/3,
                            height: MediaQuery.of(context).size.height/15,
                          child: 
                             TextField(
                              controller: dateInput,
                              onTap:  () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context, initialDate: DateTime.now(), 
                                  firstDate: DateTime(2015), lastDate: DateTime(2050));

                                  if (pickedDate != null) {
                                    print(pickedDate);
                                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                    print(formattedDate);

                                    setState(() {
                                      dateInput.text = formattedDate;
                                    });
                                  }else{
                                    print('Select date');
                                  }
                              },
                              decoration:  const InputDecoration(
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
                             style: const TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
      
         
                           SizedBox(
                            width: MediaQuery.of(context).size.width/3,
                            height: MediaQuery.of(context).size.height/15,
                          child: 
                             TextField(
                              controller: timeInput,
                              onTap:  () async {
                                TimeOfDay? pickedTime = await showTimePicker(
                                  context: context, initialTime: TimeOfDay.now());

                                  if (pickedTime != null) {
                                    print(pickedTime.format(context));
                                    DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                                    print(parsedTime);

                                    String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                                    setState(() {
                                      timeInput.text = formattedTime;
                                    });
                                  }else{
                                    print('Select time');
                                  }},
                              decoration:  const InputDecoration(
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
                          ),
                           SizedBox(width: MediaQuery.of(context).size.width/100,)
                        ],
                      ),
                     ),              
                        
                    SizedBox(height:MediaQuery.of(context).size.height/50),
      
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                
                       SizedBox(width:  MediaQuery.of(context).size.width/100,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/3,
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
                          width: MediaQuery.of(context).size.width/3,
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
                            
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Info()));
                      
                          }, 
                          child: const Text('create', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontSize: 15, color: Colors.white),)),
                        ),
                
                        const SizedBox(width: 10,)
                     ],
                    )
                  ],
                  
                          )
                          )
                              );
                            });
                            
                      }, 
                   
                     child: const Icon(Icons.add, color: Colors.white, ),
                    ),
                ),
              )
            ],
          ),
        ),
      
        ),
      )
  );
  }
}