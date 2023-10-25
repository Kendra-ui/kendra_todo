import 'package:flutter/material.dart';
import 'package:kendra_todo/onboarding/page2.dart';
import 'package:kendra_todo/onboarding/page3.dart';
import 'package:kendra_todo/utils/custom_textfield/text1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

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

        const SizedBox(height: 30,),

        Flexible(
          fit: FlexFit.loose,
          child: Image.asset('assets/images/protected.png')),

      Container(
        width: 254,
        height: 200,
        margin: const EdgeInsets.only(top:15),
        child: 
        const Text('Your information are secured with us', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Poppins'),),
      ),

      const SizedBox(height: 20,),
      Row(
        children: [
          const SizedBox(width: 140,),
          GestureDetector(
            child: Image.asset("assets/images/slider3.png"),
            onDoubleTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext  context)=> const Page3()));
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
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Text1()));

                  }, 
                 child: const Icon(Icons.arrow_forward, color: Colors.black,),
                ),
            ),
          )
        ],
      )
      ],
    ),
    )
    );
}
}