import 'package:flutter/material.dart';
import 'package:kendra_todo/onboarding/page1.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


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
                child:   Column(
        
          children: [
            Padding(
              padding: const EdgeInsets.only(top:110.0),
              child: Image.asset('assets/images/Checkmark.png'),
            ),
              Padding(
               padding: const EdgeInsets.all(12),
               child: GestureDetector(
                child: 
                const Text('DO IT', textAlign:TextAlign.center,style: TextStyle( fontSize: 36, color: Colors.white, fontFamily: 'Darumadrop One'),),
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Page1()));
                },

                ),
             ),
             const Padding(
               padding: EdgeInsets.only(top:250.0),
               child: Text('v 1.0.0',textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),
             )
          ],
        ),
      )
      )
    ;
  }
}