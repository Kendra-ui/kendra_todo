import 'package:flutter/material.dart';
import 'package:kendra_todo/widgets/info.dart';
import 'package:kendra_todo/widgets/info3.dart';

class Info2 extends StatefulWidget {
  const Info2({super.key});

      @override
  State<Info2> createState()  => _Info2();
}

class _Info2 extends State<Info2> {

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

         SizedBox(height: MediaQuery.of(context).size.height/30),

            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width/10),
                SizedBox(
                      height: MediaQuery.of(context).size.height/20,
                      width: MediaQuery.of(context).size.width/13,
                      child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () { 
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Info()));
                  
                   },
                   child: const Icon(Icons.arrow_back_ios, color: Colors.blue, size: 20,),)
                ),

              SizedBox(
                width: MediaQuery.of(context).size.width/7,
                height: MediaQuery.of(context).size.height/8,),
                const Text('Settings', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontWeight: FontWeight.bold, fontSize: 25),)
              ],
            ),

             Padding(
              padding:  EdgeInsets.all(MediaQuery.of(context).size.height/25),
              child:   Row(
                children: [
                  const Icon(Icons.person_rounded, color: Colors.white,),
                  const Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Text("Profile", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/1.7,),
                  const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,)
                                  ],
              ),
            ),

              SizedBox(height: MediaQuery.of(context).size.height/100),

            const Divider(color: Colors.white,),

             Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.height/25),
              child:   Row(
                children: [
                  const Icon(Icons.chat_bubble_rounded, color: Colors.white,),
                  const Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Text("Conversations", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/2.6,),
                  const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,)
                   ],
              ),
            ),
              SizedBox(height: MediaQuery.of(context).size.height/100),

            const Divider(color: Colors.white,),

             Padding(
              padding:  EdgeInsets.all(MediaQuery.of(context).size.height/25),
              child:   Row(
                children: [
                  const Icon(Icons.lightbulb, color: Colors.white,),
                  const Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Text("Projects", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/1.84,),
                  const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,)
            ],
              ),
            ),
              SizedBox(height: MediaQuery.of(context).size.height/100),

            const Divider(color: Colors.white,),

             Padding(
              padding:  EdgeInsets.all(MediaQuery.of(context).size.height/25),
              child:   Row(
                children: [
                  const Icon(Icons.policy, color: Colors.white,),
                  const Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Text("Terms and Policies", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                  ),

                  SizedBox(width:MediaQuery.of(context).size.width/3.5,),
                  const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,)
                          ],
              ),
            ),

              SizedBox(height: MediaQuery.of(context).size.height/100),
               const Divider(color: Colors.white,),

              Padding(
                  padding:  EdgeInsets.all(MediaQuery.of(context).size.width/8),
                  child: Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/20,
                    alignment: Alignment.center,
                    child: ElevatedButton.icon(
                      onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Info3()));

                      }, 
                    icon:const Icon(Icons.logout_rounded, color: Color.fromARGB(255, 250, 7, 19), size: 20,),
                    label: const Text('Logout', style: TextStyle(color: Colors.red, fontFamily: 'Poppins'),),
                    ),
                  ),
                ),              
          ],
        ),
      )
        );
  }
}