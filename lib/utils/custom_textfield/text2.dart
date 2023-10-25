import 'package:flutter/material.dart';
import 'package:kendra_todo/utils/custom_textfield/text3.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Text2 extends StatefulWidget {
  const Text2({super.key});

      @override
  State<Text2> createState()  => _Text2();
}

class _Text2 extends State<Text2> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
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
         child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight
                ),
                child: IntrinsicHeight(
                  
            child:    
            Column(
          children: [
            Padding(padding: const EdgeInsets.all(40),
          child: Image.asset('assets/images/Checkmark.png'),
          ),
      
           Padding(
             padding: const EdgeInsets.only(right:90),
             child: RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.white),
              children: [
                TextSpan(text: 'Welcome Back to', style: TextStyle(fontFamily: 'Poppins', fontSize: 25)),
                TextSpan(text: ' DO IT', style: TextStyle(fontFamily: 'Darumadrop One', fontSize: 25))
                
              ])
             ),
           ),
          const  Padding(
             padding:  EdgeInsets.only(right:90.0),
             child:  Text('Create an account and join us', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 18),),
           ),
      
           Padding(
            padding: const EdgeInsets.only(top:40.0, right: 10),
            child: SizedBox(
                        width: 358,
                        height: 38,
                         child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Full Name",
                            filled: true,
                            fillColor: Color.fromARGB(255, 241, 240, 240),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                            ),
                            prefixIcon: Padding(padding: EdgeInsets.all(0),
                            child: Icon(Icons.person, color: Colors.black,),) 
                          ),
                         ),
                       ),
          ),
      
          Padding(
            padding: const EdgeInsets.only(top:40.0, right: 10),
            child: SizedBox(
                        width: 358,
                        height: 38,
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
            padding: const EdgeInsets.only(top:40.0, right: 10),
            child: SizedBox(
                        width: 358,
                        height: 38,
                         child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Password",
                            filled: true,
                            fillColor: Color.fromARGB(255, 241, 240, 240),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                            ),
                            prefixIcon: Padding(padding: EdgeInsets.all(0),
                            child: Icon(Icons.lock_sharp, color: Colors.black,),) 
                          ),
                         ),
                       ),
          ),
      
          
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: SizedBox(
                width: 348,
                height: 42,
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
      
            const Padding(
              padding:  EdgeInsets.all(15.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, color: Colors.white),),
                  Text(' sign in', style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF63D9F3)),)
                ],
              ),
            ),
      
             Padding(padding: const EdgeInsets.only(top: 5, left: 20),
            child: Row(
              children: [
                const Text('Sign up with:', style: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontWeight: FontWeight.w500),),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Image.asset('assets/images/Frame 18.png'),
                )
              ],
            ),)
          ] 
           ),
          ),
      )
    );
    
  }))));
}}