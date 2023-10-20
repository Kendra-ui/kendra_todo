import 'package:flutter/material.dart';
import 'package:kendra_todo/onboarding/page1.dart';
import 'package:kendra_todo/onboarding/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
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
    child: Column(
      children: [
        Padding(padding: const EdgeInsets.only(top: 50),
        child: Image.asset('assets/images/calendar.png'),
        ),

      const SizedBox(
        width: 250,
        height: 200,
        child: 
         Text('Make a full schedule for the whole week and stay organized and productive all days', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),),
      ),

      Padding(padding: const EdgeInsets.only(left:150),
      child:
      Row(
        children: [
          GestureDetector(
            child: Image.asset("assets/images/slider2.png"),
            onDoubleTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext  context)=> const Page1()));
            },),

          Padding(
            padding: const EdgeInsets.only(left:50),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              
                color: Colors.white,
              ),
              child: ElevatedButton(
                 onPressed: () {
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Page3()));

                   }, 
                 child: const Icon(Icons.arrow_forward, color: Colors.black,),
                ),
            ),
          )
        ],
      ))
      ],
    ),
    ),
    );
  }
}

  
  



