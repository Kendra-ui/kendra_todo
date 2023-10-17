import 'package:flutter/material.dart';

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
        Padding(padding: const EdgeInsets.all(100),
        child: Image.asset('assets/images/protected.png'),
        ),

      Container(
        width: 254,
        height: 200,
        margin: const EdgeInsets.only(top:15),
        child: 
        const Text('Your information are secured with us', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Poppins'),),
      ),

      Padding(padding: const EdgeInsets.only(left:150),
      child:
      Row(
        children: [
          Image.asset("assets/images/slider3.png"),

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
                 onPressed: () {  }, 
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
