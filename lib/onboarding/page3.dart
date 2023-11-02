import 'package:flutter/material.dart';
import 'package:kendra_todo/onboarding/page2.dart';
import 'package:kendra_todo/onboarding/page4.dart';


class Page3 extends StatelessWidget {
  const Page3({super.key});

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
         width: MediaQuery.of(context).size.width ,
          height: MediaQuery.of(context).size.height,
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
      
          SizedBox(height: MediaQuery.of(context).size.height/20,),
      
          Image.asset('assets/images/team.png', height: 150,),
      
          const SizedBox(height: 30,),
      
         SizedBox(
         width: MediaQuery.of(context).size.width/1.5,
         height: MediaQuery.of(context).size.height/5,
          child: 
           const Text('Create a team task, invite people and manage your work together', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),),
        ),
      
           SizedBox(height:MediaQuery.of(context).size.height/3.7,),
        Row(
          children: [
      
            SizedBox(
              width:MediaQuery.of(context).size.width*0.81,
              child: GestureDetector(
                child: Image.asset("assets/images/slider2.png",),
                onDoubleTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext  context)=> const Page2()));
                },),
            ),
        
            SizedBox(
              width: MediaQuery.of(context).size.width/6,
              height: MediaQuery.of(context).size.height/10,
              child: GestureDetector(
                child: ElevatedButton(
                   onPressed: () { 
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Page4()));
                    },
                   style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
                   ),
                  ), 
                   child: const Icon(Icons.arrow_forward, color: Colors.black,),
                 
              ),
            )
      )],
        ),
        ],
          ),
          ),
      ),
    );
  }
}