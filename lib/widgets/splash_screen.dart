import 'package:flutter/material.dart';
import 'package:kendra_todo/onboarding/page1.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Page1()));
                 },
      
                 ),
               SizedBox(height: MediaQuery.of(context).size.height/1.9,),
               const Text('v 1.0.0',textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),)
            ],
          ),
        ),
      )
      )
    ;
  }
}