import 'package:flutter/material.dart';
import 'package:kendra_todo/onboarding/page2.dart';
import 'package:kendra_todo/widgets/splashscreen/splash_screen.dart';
import 'dart:async';

import 'package:sqflite/sqflite.dart';

// ignore: must_be_immutable
class Page1 extends StatefulWidget {

   const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
   Database? datatBaseInstane;

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds:  5), ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  const Page2())));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
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
        
      child:
           Column(
        children: <Widget>[
      
          SizedBox(height: MediaQuery.of(context).size.height/100,),
      
          Image.asset('assets/images/pencil.png', height: 200,),
      
        SizedBox(
         width: MediaQuery.of(context).size.width/1.8,
         height: MediaQuery.of(context).size.height/5,
      
         child: 
          const Text('Plan your tasks to do, that way youll stay organized and you wont skip any', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),),
           ),
      
         SizedBox(height:MediaQuery.of(context).size.height/3.7,),
        Row(
          children: [
      
            SizedBox(
              width:MediaQuery.of(context).size.width*0.8,
              child: GestureDetector(
                child: Image.asset("assets/images/slider.png",),
                onDoubleTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext  context)=>  const SplashScreen()));
                },),
            ),
        
            SizedBox(
              width: MediaQuery.of(context).size.width/6,
              height: MediaQuery.of(context).size.height/10,
              child: GestureDetector(
                child: ElevatedButton(
                   onPressed: () { 
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Page2()));
                    },
                   style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
                   ),
                  ), 
                   child: const Icon(Icons.arrow_forward, color: Colors.black,),
                 
              ),
            )
      )],
        ),
        ],
          ),
          ),
      )
    );

}

  }

