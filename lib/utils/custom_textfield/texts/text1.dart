import 'package:flutter/material.dart';
import 'package:kendra_todo/utility/signinDB.dart';
import 'package:kendra_todo/utils/custom_textfield/home1/text3.dart';
import 'package:kendra_todo/utils/custom_textfield/texts/text2.dart';

// ignore: must_be_immutable
class Text1 extends StatefulWidget {
   Text1({super.key});

   @override
  State<Text1> createState() => _Text1State();
}

class _Text1State extends State<Text1> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
   late Signin Helper;

  @override

  void initState() {
    super.initState();
    Helper = Signin();
    //initialize database
    Helper.initDatabase();
    Signin().fetchData();
  }
  
 
 @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
               SizedBox(height: MediaQuery.of(context).size.height/30,),
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
      
              child: const Text('Have an other productive day!', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16),)),
        
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                height: MediaQuery.of(context).size.height/15,
                           child: TextFormField(
                            controller: _emailController,
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
            
            SizedBox(
              height: MediaQuery.of(context).size.height/30,
            ),
        
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                height: MediaQuery.of(context).size.height/15,
                           child: TextFormField(
                            controller:_passwordController ,
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

            SizedBox(
              height: MediaQuery.of(context).size.height/30,
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: const Text('forgot Password?', textAlign: TextAlign.right, style: TextStyle(color: Colors.white, letterSpacing: 1, fontFamily: "Poppins", decoration: TextDecoration.underline, decorationColor: Colors.white),),
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
                      onPressed: () async{
                       await Signin().insertSignupInfo( _passwordController.text.trim(), _emailController.text.trim());

                    
                      }
                      , child: GestureDetector(
                        onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const dashboard()));

                        },
                        child: const Text('Sign in', style: TextStyle( color: Colors.white),))
                      ),
                  ),
                ),
               Padding(
                 padding:  EdgeInsets.all(MediaQuery.of(context).size.height/40),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
               
                    SizedBox(
                           width: MediaQuery.of(context).size.width/2,
                           height: MediaQuery.of(context).size.height/18,
               
                      child: const Text('Dont have an account?', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, color: Colors.white),)
                      ),
               
                    SizedBox(
                           width: MediaQuery.of(context).size.width/5,
                           height: MediaQuery.of(context).size.height/18,
                      child: GestureDetector(
                        onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const Text2()));
  
                        },
                        child: 
                        const Text(' sign up', style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF63D9F3)),)))
                  ],
                           ),
               ),
        
               Padding(padding:  EdgeInsets.all(MediaQuery.of(context).size.width/15),
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
            ] 
             ),
           )
           ),
      )
         );
}
}