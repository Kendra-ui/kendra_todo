import 'package:flutter/material.dart';
import 'package:kendra_todo/utils/custom_textfield/task/list.dart';
import 'package:kendra_todo/utils/custom_textfield/texts/signUp_page.dart';
import 'package:sqflite/sqflite.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
     Database? datatBaseInstane;

   Dashboard({super.key, required this.datatBaseInstane});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
      
        child: SingleChildScrollView(
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
               SizedBox(height: MediaQuery.of(context).size.height/30),
              Row(
                children: [
                Padding(
                  padding:  EdgeInsets.all(MediaQuery.of(context).size.width/20),
                  child: Image.asset('assets/images/logo.png', height: 45,),
                ),
                   const Column(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('oussama chahidi', style: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 1)),
                      Text('oussamachahidi@gmail.com', style: TextStyle(fontFamily: 'Poppins', color: Color.fromARGB(255, 206, 204, 204),fontSize: 12, letterSpacing: 1 ),)
                    ],
                    ),
                     SizedBox(width: MediaQuery.of(context).size.width/8,),
                 const Icon(Icons.notifications, color: Colors.white,)
                ],
              ),
               SizedBox(height: MediaQuery.of(context).size.height/700,),
               GestureDetector(
                 onTap: () {
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignUp()));
                 },
                 child:
                  SizedBox(
                    width: MediaQuery.of(context).size.height/1.8,
                    child: const Text('Group tasks', style: TextStyle(fontFamily: 'Poppins', color: Colors.white , fontSize: 16, letterSpacing: 1),))),
        
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding:  EdgeInsets.all(MediaQuery.of(context).size.height/40),
                  child: Row(
                    children: [
                      Container(
                      width: MediaQuery.of(context).size.width/1.9,
                      height: MediaQuery.of(context).size.height/6,
      
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: 
                         Padding(
                          padding:  const EdgeInsets.only(top:15.0, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Design Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 1),),
                              const Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1 ),),
                              Padding(
                                padding: const EdgeInsets.only(top:15.0),
                                child: Image.asset('assets/images/Group 3.png'),
                              )
              
                            ],
                          ),
                        ),
                      ),
              
                      Padding(
                        padding: const EdgeInsets.only(left:18.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.9,
                          height: MediaQuery.of(context).size.height/6,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: 
                           Padding(
                            padding:  const EdgeInsets.only(top:15.0, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Projects Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                                const Text('Thursday | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1 ),)
                                     ,Padding(
                                padding: const EdgeInsets.only(top:15.0),
                                child: Image.asset('assets/images/Group 3.png'),
                              )  
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
               SizedBox(height: MediaQuery.of(context).size.height/80,),
        
              SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: const Text('Incomplete Tasks', style: TextStyle(letterSpacing: 1, color: Colors.white, fontFamily: 'Poppins', fontSize: 14),)),
        
              Padding(
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.height/100),
                        child: Container(
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
                      ),
        
                      Padding(
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.height/100, ),
                        child: Container(
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
                                Text('Thursday | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
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
                      ),
        
      
               SizedBox(height: MediaQuery.of(context).size.height/30,),
                      
              SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: const Text('Complete Tasks', style: TextStyle(letterSpacing: 1, color: Colors.white, fontFamily: 'Poppins', fontSize: 14),)),
      
      
                  Padding(
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.height/100),
                        child: Container(
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
                                const Padding(
                                  padding: EdgeInsets.only(top:5.0),
                                  child: Icon(Icons.verified_rounded,color: Color.fromARGB(255, 130, 236, 133)),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.only(right: 120),
                                  child: Column(
                                    children: [
                                  Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                                  Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                                  child: const Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                                )
                                
                              ],
                            ),
                          ),
                        ),
                      ),
      
          Padding(
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.height/100),
                        child: Container(
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
                                const Padding(
                                  padding: EdgeInsets.only(top:5.0),
                                  child: Icon(Icons.verified_rounded,color: Color.fromARGB(255, 130, 236, 133)),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.only(right: 120),
                                  child: Column(
                                    children: [
                                  Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                                  Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                                  child: GestureDetector(
                                    onTap: () {
                                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Text4(datatBaseInstane: datatBaseInstane,)));
                                    },
                                    child: const Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,)
                                    ),
                                )
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                    
                  ],
                ),
              ),
            ),
      ),
    );
  }
}