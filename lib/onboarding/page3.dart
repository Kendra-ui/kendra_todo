import 'package:flutter/material.dart';
import 'package:kendra_todo/onboarding/page2.dart';
import 'package:kendra_todo/onboarding/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
        Padding(padding: const EdgeInsets.only(top:50),
        child: Image.asset('assets/images/team.png'),
        ),

      Container(
        width: 254,
        height: 200,
        margin: const EdgeInsets.only(top:40),
        child: 
        const Text('Create a team task, invite people and manage your work together', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),),
      ),

      Padding(padding: const EdgeInsets.only(top: 50, left:150),
      child:
      Row(
        children: [
          GestureDetector(
            child: Image.asset("assets/images/slider2.png"),
            onDoubleTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext  context)=> const Page2()));
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
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Page4()));

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