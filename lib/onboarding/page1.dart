import 'package:flutter/material.dart';
import 'package:kendra_todo/onboarding/page2.dart';
import 'package:kendra_todo/widgets/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Page1 extends StatelessWidget {
  const Page1({super.key});



@override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
       width: MediaQuery.of(context).size.width,
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
child:
     Column(
      children: [
        const SizedBox(height: 10),

        Image.asset('assets/images/pencil.png'),

     const SizedBox(
       width: 254,
       height: 200,
       child: 
        Text('Plan your tasks to do, that way youll stay organized and you wont skip any', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),),
     ),

      const SizedBox(height: 60,),
      Row(
        children: [

          const SizedBox(width: 150,),
          Flexible(
            child: GestureDetector(
              child: Image.asset("assets/images/slider.png"),
              onDoubleTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext  context)=> const SplashScreen()));
              },),
          ),
      
          Padding(
            padding: const EdgeInsets.only(left:80),
            child: Flexible(
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
                   
                ),
              ),
            ),
          )
        ],
      ),
      ],
    ),));

}

  
  
}