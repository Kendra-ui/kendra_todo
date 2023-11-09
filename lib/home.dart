import 'package:flutter/material.dart';
//import 'package:kendra_todo/onboarding/page1.dart';
import 'package:kendra_todo/screen_to_show.dart';
// import 'package:kendra_todo/screen_to_show.dart';
 import 'package:kendra_todo/utils/custom_textfield/texts/signUp_page.dart';
import 'package:kendra_todo/widgets/splashscreen/splash_screen.dart';
//import 'dart:async';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: screenToShow(  context), builder: (BuildContext context, AsyncSnapshot snapshot){
      //print("hhhhhhhhhhhhhhh ${snapshot.data["screenToShow"]}");
     
      if (snapshot.hasData) {
        switch (snapshot.data["screenToShow"]) {
        case "onBoarding":
        return const SplashScreen();
        case "singUp":
        return const Text2();
        default:
      }
       return Container(); 
      }else{
        return const SplashScreen();
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