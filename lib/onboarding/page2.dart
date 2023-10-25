import 'package:flutter/material.dart';
import 'package:kendra_todo/onboarding/page1.dart';
import 'package:kendra_todo/onboarding/page3.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Page2 extends StatelessWidget {
  const Page2({super.key});


  @override
  Widget build(BuildContext context) {

    //double screenwidth = MediaQuery.of(context).size.width;

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

      child: Column(
      children: [

        const SizedBox(height: 5,),

            Flexible(
              fit: FlexFit.loose,
              child: Image.asset('assets/images/calendar.png')),
            
       const SizedBox(
             width: 250,
             height: 200,
             child: 
              Text('Make a full schedule for the whole week and stay organized and productive all days', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),),
       ),

       const SizedBox(height: 10,),
            
      Row(
            children: [

              const SizedBox(width: 130,),
              Flexible(
                child: GestureDetector(
                  child: Image.asset("assets/images/slider2.png"),
                  onDoubleTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext  context)=> const Page1()));
                  },
                  ),
              ),
            
              Padding(
                padding: const EdgeInsets.only(left:70,),
                child: Flexible(
                  fit: FlexFit.loose,
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
                         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Page3()));
                           }, 
                         child: const Icon(Icons.arrow_forward, color: Colors.black,),
                        ),
                    ),
                  ),
                ),
              )
            ],
      )
      ],
            ),
 
        ),
    );
  }
}

  
  



