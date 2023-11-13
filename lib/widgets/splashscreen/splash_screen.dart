import 'package:flutter/material.dart';
import 'package:kendra_todo/onboarding/page1.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';

import 'package:sqflite/sqflite.dart';

// ignore: must_be_immutable
class SplashScreen extends StatefulWidget {
     Database? datatBaseInstane;

   SplashScreen({super.key, required this.datatBaseInstane});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
     Database? datatBaseInstane;

    @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds:  5), ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  Page1(datatBaseInstane: datatBaseInstane,))));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
          child:   Column(
          
            children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height/10,),
      
              Image.asset('assets/images/Checkmark.png'),
      
              SizedBox(height: MediaQuery.of(context).size.height/1000,),
      
                GestureDetector(
                 child: 
                 const Text('DO IT', textAlign:TextAlign.center,style: TextStyle( fontSize: 36, color: Colors.white, fontFamily: 'Darumadrop One'),),
                 onTap: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Page1(datatBaseInstane: datatBaseInstane,)));
                 },
      
                 ),
               SizedBox(height: MediaQuery.of(context).size.height/1.9,),
               const Text('v 1.0.0',textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),)
            ],
          ),
        ),
      ));
  }
}
