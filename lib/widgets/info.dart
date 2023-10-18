import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

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
        child: 
         Padding(
          padding:  const EdgeInsets.only(top:70.0, left: 30),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.blue, size: 18,),
                  Text('Task Details', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 1),)
                ],
              ),

              const Padding(
                padding: EdgeInsets.only(top:70.0),
                child: Row(
                  children: [
                    Text('team meeting', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontSize: 18),),
                    Padding(
                      padding: EdgeInsets.only(left:8.0),
                      child: Icon(Icons.abc, color: Colors.white,),
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.calendar_month, color: Colors.white, size: 15,),
                  Text('Today |',style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontSize: 12), ),
                  Icon(Icons.timelapse, color: Colors.white, size: 15,),
                  Text('20:00pm',style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontSize: 12),)
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top:30.0, right: 30),
                child: Divider(color: Colors.white, thickness: 1,),
              ),
              const Padding(
                padding: EdgeInsets.only(top:25.0, right: 30),
                child: SizedBox(
                  width: 350,
                  height: 130,
                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
                  , style: TextStyle(fontFamily: "Poppins", fontSize: 14, color: Colors.white),),
                ),
              ),

              Padding(
                    padding: const EdgeInsets.only(top:50, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                      SizedBox(
                        width: 88,
                        height: 71,
                        child: ElevatedButton(
                          style: ButtonStyle(
                             backgroundColor:MaterialStateProperty.all(Color(0xFF05243E)),

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
                                Icon(Icons.verified, color: Color.fromARGB(255, 104, 224, 108),size: 20,),
                                 Text('Done', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontSize: 12, color: Colors.white),),
                          
                              ],
                            ),
                          )),
                      ),

                      SizedBox(
                        width: 88,
                        height: 71,
                        child: ElevatedButton(
                          style: ButtonStyle(
                             backgroundColor:MaterialStateProperty.all(Color(0xFF05243E)),

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
                        width: 88,
                        height: 71,
                        child: ElevatedButton(
                          style: ButtonStyle(
                             backgroundColor:MaterialStateProperty.all(Color(0xFF05243E)),

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
        ),
          ]),
        ),
        )
    );
  }
}