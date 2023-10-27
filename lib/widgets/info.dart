import 'package:flutter/material.dart';
import 'package:kendra_todo/utils/custom_textfield/text4.dart';
import 'package:kendra_todo/widgets/info2.dart';

class Info extends StatelessWidget {
  const Info({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
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
          child: 
           Padding(
            padding:   EdgeInsets.all(MediaQuery.of(context).size.width/15),
            child: Column(
              children: [
                SizedBox(height:MediaQuery.of(context).size.height/20),
      
                 Row(
                  children: [
                    GestureDetector(
                      child: const Icon(Icons.arrow_back_ios, color: Colors.blue, size: 18,),
                      onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Text4()));
      
                      }
                      ,),
                    const Text('Task Details', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 1),)
                  ],
                ),
        
                SizedBox(height:MediaQuery.of(context).size.height/30),
      
                const Row(
                  children: [
                    Text('team meeting', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontSize: 18),),
                    Padding(
                      padding: EdgeInsets.only(left:8.0),
                      child: Icon(Icons.abc, color: Colors.white,),
                    ),
                  ],
                ),
                SizedBox(height:MediaQuery.of(context).size.height/80),
      
                const Row(
                  children: [
                    Icon(Icons.calendar_month, color: Colors.white, size: 15,),
                    Text('Today |',style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontSize: 12), ),
                    Icon(Icons.timelapse, color: Colors.white, size: 15,),
                    Text('20:00pm',style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontSize: 12),)
                  ],
                ),
                 Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width/80),
                  child: const Divider(color: Colors.white, thickness: 1,),
                ),
      
                SizedBox(height: MediaQuery.of(context).size.height/50),
                 SizedBox(
                   width: MediaQuery.of(context).size.width/1,
                   height: MediaQuery.of(context).size.height/4,
                   child: const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
                   , style: TextStyle(fontFamily: "Poppins", fontSize: 14, color: Colors.white),),
                 ),
      
              SizedBox(height: MediaQuery.of(context).size.height/5),
      
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/8,
                    child: ElevatedButton(
                      style: ButtonStyle(
                         backgroundColor:MaterialStateProperty.all(const Color(0xFF05243E)),
      
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        )
                      ),
                      onPressed: (){
                    
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Info2()));
      
                      }, 
                      child: const Padding(
                        padding:  EdgeInsets.only(top:8.0),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.verified, color: Color.fromARGB(255, 104, 224, 108),size: 20,),
                             Text('Done', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontSize: 12, color: Colors.white),),
                      
                          ],
                        ),
                      )),
                  ),
      
                  SizedBox(
                     width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/8,
                    child: ElevatedButton(
                      style: ButtonStyle(
                         backgroundColor:MaterialStateProperty.all(const Color(0xFF05243E)),
      
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        )
                      ),
                      onPressed: (){}, 
                      child: const Padding(
                        padding:  EdgeInsets.only(top:8.0),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.delete_sharp, color: Color.fromARGB(255, 230, 17, 17),size: 20,),
                             Text('Delete', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontSize: 10, color: Colors.white),),
                      
                          ],
                        ),
                      )),
                  ),
      
                  SizedBox(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/8,
                    child: ElevatedButton(
                      style: ButtonStyle(
                         backgroundColor:MaterialStateProperty.all(const Color(0xFF05243E)),
      
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        )
                      ),
                      onPressed: (){}, 
                      child: const Padding(
                        padding:  EdgeInsets.only(top:8.0),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.pin_drop_rounded, color: Colors.yellow,size: 20,),
                             Text('Pin', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontSize: 12, color: Colors.white),),
                      
                          ],
                        ),
                      )),
                  ),
              ],
            ),
            ]),
          ),
          ),
      )
    );
  }
}