import 'package:flutter/material.dart';
import 'package:kendra_todo/utils/custom_textfield/text4.dart';

class Text3 extends StatefulWidget {
  const Text3({super.key});

      @override
  State<Text3> createState()  => _Text3();
}

class _Text3 extends State<Text3> {

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
        child:   Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 15 ),
              child: Row(
                children: [
                Image.asset('assets/images/logo.png', height: 70,),
                   const Padding(
                     padding:  EdgeInsets.all(3.0),
                     child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('oussama chahidi', style: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1)),
                        Text('oussamachahidi@gmail.com', style: TextStyle(fontFamily: 'Poppins', color: Color.fromARGB(255, 206, 204, 204),fontSize: 14, letterSpacing: 1 ),)
                      ],
                                   ),
                   ),
                 const Padding(
                    padding:  EdgeInsets.only(left: 40.0),
                    child:  Icon(Icons.notifications, color: Colors.white,),
                  )
                ],
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(right:270.0, top: 10),
              child:  Text('Group tasks', style: TextStyle(fontFamily: 'Poppins', color: Colors.white , fontSize: 16, letterSpacing: 1),),
            ),
      
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top:15.0, left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 106,
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
                        width: 200,
                        height: 106,
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
      
            const Padding(
              padding:  EdgeInsets.only(top:15.0, right: 240),
              child: Text('Incomplete Tasks', style: TextStyle(letterSpacing: 1, color: Colors.white, fontFamily: 'Poppins', fontSize: 14),),
            ),
      
            Padding(
                      padding: const EdgeInsets.only(top:15, right: 15, left: 15),
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
                              Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
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
                      padding: const EdgeInsets.only(top:15, right: 15, left: 15),
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
                              Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                              Text('Thursday | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
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
            const Padding(
              padding:  EdgeInsets.only(top:10.0, right: 240),
              child: Text('Complete Tasks', style: TextStyle(letterSpacing: 1, color: Colors.white, fontFamily: 'Poppins', fontSize: 14),),
            ),
      Padding(
                      padding: const EdgeInsets.only(top:15, left: 15, right: 15),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top:5.0),
                                child: Icon(Icons.verified_rounded,color: Color.fromARGB(255, 130, 236, 133)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:8.0),
                                child: Column(
                                  children: [
                                Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                                Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:189, top:10),
                                child: Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                              )
                              
                            ],
                          ),
                        ),
                      ),
                    ),
      
                    Padding(
                      padding: const EdgeInsets.only(top:15, right: 15, left: 15),
                      child: Container(
                        width: 400,
                        height: 50,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: 
                         Padding(
                          padding:  const EdgeInsets.only(top:8.0, left: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top:5.0),
                                child: Icon(Icons.verified_rounded,color: Color.fromARGB(255, 130, 236, 133)),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left:8.0),
                                child: Column(
                                  children: [
                                Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                                Text('Thursday | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                                  ],
                                ),
                              ),
                      Padding(
                        padding: const EdgeInsets.only(left:189, top:10),
                        child: GestureDetector(
                          child: const Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,)
                          ,onTap: (){
      
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Text4()));
      
                                  },
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
    );
  }
}