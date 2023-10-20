import 'package:flutter/material.dart';
import 'package:kendra_todo/onboarding/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});



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
        Padding(padding: const EdgeInsets.all(50),
        child: Image.asset('assets/images/pencil.png'),
        ),

      Container(
        width: 254,
        height: 200,
        margin: const EdgeInsets.only(top:10),
        child: 
        const Text('Plan your tasks to do, that way youll stay organized and you wont skip any', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),),
      ),

      Padding(padding: const EdgeInsets.only(left:150),
      child:
      Row(
        children: [
          Image.asset("assets/images/slider.png"),

          Padding(
            padding: const EdgeInsets.only(left:50),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              
                color: Colors.white,
              ),
              child: GestureDetector(
                child: ElevatedButton(
                   onPressed: () { 
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Page2()));
                    }, 
                   child: const Icon(Icons.arrow_forward, color: Colors.black,),
                  ),
                  onTap: () {
                  },
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

  
  
