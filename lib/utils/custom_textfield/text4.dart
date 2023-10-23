import 'package:flutter/material.dart';
import 'package:kendra_todo/utils/buttons/button1.dart';
import 'package:kendra_todo/utils/custom_textfield/text3.dart';
import 'package:kendra_todo/widgets/info.dart';

class Text4 extends StatelessWidget {
  const Text4({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child:   Column(
          children: [
            Row(
              children: [
                Padding(
            padding: const EdgeInsets.only(top:50.0, left: 10),
            child: SizedBox(
                        width: 250,
                        height: 38,
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
      
          Padding(
            padding: const EdgeInsets.only(top:50.0, left: 10),
            child: SizedBox(
                        width: 128,
                        height: 38,
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
             Padding(
              padding:  const EdgeInsets.only(top:50.0, right: 299),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Text3()));
                },
                child: 
                 const Text('Tasks List', style: TextStyle(letterSpacing: 1, color: Colors.white, fontFamily: 'Poppins', fontSize: 14),),
                ),
            ),
      
            Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: 
                        const Padding(
                          padding:  EdgeInsets.only(top:8.0, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                              Text('Client meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                              Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                              )
                              
                            ],
                          ),
                        ),
                      ),
                    ),
      
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: 400,
                        height: 50,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: 
                        const Padding(
                          padding:  EdgeInsets.only(top:8.0, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                              Text('Client meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                              Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                              )
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                   Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: 400,
                        height: 50,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: 
                        const Padding(
                          padding:  EdgeInsets.only(top:8.0, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                              Text('Client meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                              Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                              )
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: 400,
                        height: 50,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: 
                        const Padding(
                          padding:  EdgeInsets.only(top:8.0, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                              Text('Client meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                              Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                              )
                              
                            ],
                          ),
                        ),
                      ),
                    ),
      
                    Padding(
              padding: const EdgeInsets.only(top: 50, left:310),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                
                  color:  Colors.lightBlue,
                ),
                child: ElevatedButton(
                   onPressed: () { 
                    showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return  SizedBox(
                              height: 500,
                              width: double.infinity,
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
                      padding: const EdgeInsets.only(top:15),
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
                    padding:  EdgeInsets.only(top:20.0, right: 28, left: 28),
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
                            
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Info()));

                          }, 
                          child: const Text('create', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontSize: 15, color: Colors.white),)),
                        ),
                     ],
                    ),
                  )
              ],
              
          )
          )
                            );
                          });
                    //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Button1()));
      
                    }, 
                   style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF63D9F3)
                   ),
                   child: const Icon(Icons.add, color: Colors.white, ),
                  ),
              ),
            )
          ],
        ),
        ),
      ),
  );}
}