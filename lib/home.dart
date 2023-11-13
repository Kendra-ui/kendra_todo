import 'package:flutter/material.dart';
//import 'package:kendra_todo/onboarding/page1.dart';
import 'package:kendra_todo/screen_to_show.dart';
// import 'package:kendra_todo/screen_to_show.dart';
 import 'package:kendra_todo/utils/custom_textfield/texts/signUp_page.dart';
import 'package:kendra_todo/widgets/splashscreen/splash_screen.dart';
import 'package:sqflite/sqflite.dart';
//import 'dart:async';


// ignore: must_be_immutable
class Home extends StatelessWidget {
   Database datatBaseInstane;
   Home({super.key, required this.datatBaseInstane});

  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder(future: screenToShow(  context), builder: (BuildContext context, AsyncSnapshot snapshot){
      //print("hhhhhhhhhhhhhhh ${snapshot.data["screenToShow"]}");
     
      if (snapshot.hasData) {
        switch (snapshot.data["screenToShow"]) {
        case "onBoarding":
        return  SplashScreen(datatBaseInstane: datatBaseInstane,);
        case "singUp":
        return  SignUp(datatBaseInstane: datatBaseInstane,);
        default:
      }
       return Container(); 
      }else{
        return  SplashScreen(datatBaseInstane: datatBaseInstane,);
      }
    }
    );
    //const  SplashScreen();
  }
}

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {

//   @override
//   void initState() {
//     super.initState();
//     Timer(
//       const Duration(seconds:  5), ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Page1())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const SplashScreen();
//   }
// }