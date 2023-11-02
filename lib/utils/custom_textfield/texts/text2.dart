import 'package:flutter/material.dart';
import 'package:kendra_todo/utils/custom_textfield/home1.dart/text3.dart';
import 'package:kendra_todo/utils/custom_textfield/texts/text1.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';


class Text2 extends StatefulWidget {
  const Text2({super.key});

      @override
  State<Text2> createState()  => _Text2();
}

class _Text2 extends State<Text2> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
          constraints: const BoxConstraints(),
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
          child:Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/20,),
              Image.asset('assets/images/Checkmark.png', height: 90,),
      
        
             SizedBox(height: MediaQuery.of(context).size.height/30,),
      
              
             SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              height: MediaQuery.of(context).size.height/18,
               child: RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(text: 'Welcome Back to', style: TextStyle(fontFamily: 'Poppins', fontSize: 18)),
                  TextSpan(text: ' DO IT', style: TextStyle(fontFamily: 'Darumadrop One', fontSize: 18))
                  
                ])
               ),
             ),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              height: MediaQuery.of(context).size.height/18,
      
              child: const Text('Create an account and join us', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16),)),
        
        
             Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                height: MediaQuery.of(context).size.height/15,
                           child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Full Name",
                              filled: true,
                              fillColor: Color.fromARGB(255, 241, 240, 240),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none
                              ),
                              prefixIcon: Padding(padding: EdgeInsets.all(0),
                              child: Icon(Icons.person,  color: Colors.black),) 
                            ),
                            
                           ),
                         ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                height: MediaQuery.of(context).size.height/15,
                           child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: "E-mail",
                              filled: true,
                              fillColor: Color.fromARGB(255, 241, 240, 240),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none
                              ),
                              prefixIcon: Padding(padding: EdgeInsets.all(0),
                              child: Icon(Icons.mail,  color: Colors.black),) 
                            ),
                            
                           ),
                         ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                height: MediaQuery.of(context).size.height/15,
                           child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Password",
                              filled: true,
                              fillColor: Color.fromARGB(255, 241, 240, 240),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none
                              ),
                              prefixIcon: Padding(padding: EdgeInsets.all(0),
                              child: Icon(Icons.lock_sharp,  color: Colors.black),) 
                            ),
                            
                           ),
                         ),
      
            ),
        
            
              Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width/1.2,
                height: MediaQuery.of(context).size.height/15,
                    child: ElevatedButton(
                      style:  ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.lightBlue) ,
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                    
                        ),
                        
                      )
                      ),
                      onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Text3()));
                    
                      }
                      , child: const Text('Sign up', style: TextStyle( color: Colors.white),)
                      ),
                  ),
                ),
              Padding(
                 padding:  EdgeInsets.all(MediaQuery.of(context).size.height/40),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
               
                    SizedBox(
                           width: MediaQuery.of(context).size.width/1.7,
                           height: MediaQuery.of(context).size.height/18,
               
                      child: const Text('Already have have an account?', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, color: Colors.white),)
                      ),
               
                    SizedBox(
                           width: MediaQuery.of(context).size.width/6,
                           height: MediaQuery.of(context).size.height/25,
                      child: GestureDetector(
                        onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Text1()));

                        },
                        child: const Text(' sign in', style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF63D9F3)),)))
                  ],
                           ),
               ),
        
               SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                 child: Row(
                  children: [
                    const Text('Sign in with:', style: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontWeight: FontWeight.w500),),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Image.asset('assets/images/Frame 18.png'),
                    )
                  ],
                 ),
               )
                ],
                         ),
                         )
             
             ),
      ),
    );
}
}