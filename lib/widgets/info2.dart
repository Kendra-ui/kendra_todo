import 'package:flutter/material.dart';

class Info2 extends StatelessWidget {
  const Info2({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:50.0, left: 30),
                  child: IconButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    iconSize: MaterialStateProperty.all(15),
                    fixedSize: MaterialStateProperty.all(const Size(30, 30))                ),
                  icon:const Icon(Icons.arrow_back_ios, color: Colors.lightBlue,) , 
                  onPressed: () {  },)
                ),

                const Padding(
                  padding:  EdgeInsets.only(top:50.0, right: 150),
                  child: Text('Settings', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontWeight: FontWeight.bold, fontSize: 25),),
                )
              ],
            ),
            const Padding(
              padding:  EdgeInsets.only(top:70.0, left: 30),
              child:  Row(
                children: [
                  Icon(Icons.person_rounded, color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Text("Profile", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:250.0),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,),
                  )
                                  ],
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(top:10.0),
              child: Divider(color: Colors.white,),
            ),               
            const Padding(
              padding:  EdgeInsets.only(top:20.0, left: 30),
              child:  Row(
                children: [
                  Icon(Icons.message_sharp, color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Text("Conversations", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:170.0),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,),
                  )
                   ],
              ),
            ),

            const Padding(
              padding:  EdgeInsets.only(top:10.0),
              child: Divider(color: Colors.white,),
            ),               
            const Padding(
              padding:  EdgeInsets.only(top:20.0, left: 30),
              child:  Row(
                children: [
                  Icon(Icons.production_quantity_limits, color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Text("Projects", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:232.0),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,),
                  )
            ],
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(top:10.0),
              child: Divider(color: Colors.white, thickness: 1,),
            ),               
            const Padding(
              padding:  EdgeInsets.only(top:20.0, left: 30),
              child:  Row(
                children: [
                  Icon(Icons.settings_applications, color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Text("Terms and Policies", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:125.0),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,),
                  )
                          ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top:10.0,),
                child: Divider(color: Colors.white, thickness: 1,),
              ), 

              Padding(
                  padding: const EdgeInsets.only(top:50.0, left: 30),
                  child: Container(
                    width: 400,
                    height: 30,
                    alignment: Alignment.center,
                    child: ElevatedButton.icon(
                      onPressed: (){}, 
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