import 'package:flutter/material.dart';

class Text4 extends StatelessWidget {
  const Text4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Row(
            children: [
              Padding(
          padding: const EdgeInsets.only(top:50.0, left: 10),
          child: SizedBox(
                      width: 250,
                      height: 38,
                       child: TextFormField(
                        decoration:  InputDecoration(
                          labelText: "Search by task title",
                          filled: true,
                          fillColor: const Color(0xFF102D53),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          
                          suffixIcon: const Padding(padding: EdgeInsets.all(5),
                          child: Icon(Icons.search, color: Color.fromARGB(255, 158, 157, 157),),)
                        ),
                       ),
                     ),
        ),

        Padding(
          padding: const EdgeInsets.only(top:50.0, left: 10),
          child: SizedBox(
                      width: 128,
                      height: 38,
                       child: TextFormField(
                        decoration:  InputDecoration(
                          labelText: "Sort By:",
                          filled: true,
                          fillColor: const Color(0xFF102D53),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          prefixIcon: const Padding(padding: EdgeInsets.all(5),
                          child: Icon(Icons.filter_list, size: 25, color: Colors.grey,)
                          ),
                          suffixIcon: const Padding(padding: EdgeInsets.all(5),
                          child: Icon(Icons.arrow_drop_down, color: Color.fromARGB(255, 158, 157, 157), size: 30,),)
                        ),
                       ),
                     ),
        ),
            ],
          ),
          const Padding(
            padding:  EdgeInsets.only(top:50.0, right: 240),
            child: Text('Tasks List', style: TextStyle(letterSpacing: 1, color: Colors.white, fontFamily: 'Poppins', fontSize: 14),),
          ),

          Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: 
                      const Padding(
                        padding:  EdgeInsets.only(top:8.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                            Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                            Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                            )
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 400,
                      height: 50,
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: 
                      const Padding(
                        padding:  EdgeInsets.only(top:8.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                            Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                            Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                            )
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                 Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 400,
                      height: 50,
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: 
                      const Padding(
                        padding:  EdgeInsets.only(top:8.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                            Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                            Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                            )
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 400,
                      height: 50,
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: 
                      const Padding(
                        padding:  EdgeInsets.only(top:8.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                            Text('Client Meeting', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold,letterSpacing: 1),),
                            Text('Tomorrow | 10:30pm', style: TextStyle(fontFamily: 'Poppins', fontSize: 10,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_forward_ios, color: Colors.lightBlue, size: 16,),
                            )
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
            padding: const EdgeInsets.only(top: 50, left:310),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              
                color:  Colors.lightBlue,
              ),
              child: ElevatedButton(
                 onPressed: () {  }, 
                 style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF63D9F3)
                 ),
                 child: const Icon(Icons.add, color: Colors.white, ),
                ),
            ),
          )
        ],
  ),
  ),
  );}
}