import 'package:flutter/material.dart';
//import 'package:kendra_todo/utility/Signin_DB.dart';
import 'package:kendra_todo/utility/data_helper.dart';
import 'package:kendra_todo/utils/custom_textfield/home1/dashboard.dart';
import 'package:kendra_todo/utils/custom_textfield/texts/sign_up.dart';
import 'package:sqflite/sqflite.dart';

// ignore: must_be_immutable
class SignIn extends StatefulWidget {
     Database? datatBaseInstane;

    
   SignIn({super.key, required this.datatBaseInstane});

   @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   Database? datatBaseInstane;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
   late DatabaseHelper databaseHelper;
   final _formKey = GlobalKey<FormState>();
    bool isVisible= false;


   //this checks if the username/password is correct 
   // Inside your sign-in button's onPressed event
      


  @override

  void initState() {
    super.initState();
    // helper = Signin();
    // //initialize database
    // helper.initialize();
    // Signin().fetchData();
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
        
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/1.1,
                      height: MediaQuery.of(context).size.height/15,
                                 child: TextFormField(
                                  validator: (value) {
                                    String pattern =
                                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                    RegExp regex = RegExp(pattern);
                                    if (!regex.hasMatch(value!) ) {
                                      return 'Enter Valid Email';
                                    } else if(value.isEmpty){
                                      return 'Please enter text';
                                    }
                                    return null;
                                  },
                                  
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
                                  validator: (value) {
                                    String pattern =
                                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                    RegExp regex = RegExp(pattern);
                                    if (value!.length >= 8) {
                                    return 'Please enter more than 8 digits';

                                    } else if( value.isEmpty){
                                    return 'Field empty';
                                      
                                    }else if(!regex.hasMatch(value)){
                                      return 'Enter atleast one special character';
                                    }
                                    return null;
                                  },
                                  controller:_passwordController ,
                                  obscureText: !isVisible,
                                  decoration:  InputDecoration(
                                    labelText: "Password",
                                    filled: true,
                                    fillColor: const Color.fromARGB(255, 241, 240, 240),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none
                                    ),
                                    prefixIcon: const Padding(padding: EdgeInsets.all(0),
                                    child: Icon(Icons.lock_sharp,  color: Colors.black),),
                                    suffixIcon: IconButton(onPressed: (){
                                      setState(() {
                                          isVisible = !isVisible;
                                        });
                                    },
                                     icon: Icon(isVisible? Icons.visibility : Icons.visibility_off)) 
                                  
                                  ),
                                  
                                 ),
                               ),
                  
                  ),
                ],
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
                      onPressed: 
                      () async{
                        void signIn() async {
        final email = _emailController.text;
        final password = _passwordController.text;  // Replace with the user's entered password

        final user = await databaseHelper.checkCredentials(email, password);

        if (user != null) {
          // Authentication successful, user is signed in
          // ignore: avoid_print
          print('Sign-in successful for user: ${user['email']}');
        } else {
          // Authentication failed, show an error message to the user
          // ignore: avoid_print
          print('Sign-in failed. Invalid credentials.');
        }
      }
                        // if (_formKey.currentState!.validate()) {
                        //     await Signin().insertSigninInfo( _passwordController.text.trim(), _emailController.text.trim());

                        //     }
                    
                      }
                      , child: GestureDetector(
                        onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Dashboard(datatBaseInstane: datatBaseInstane)));

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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>SignUp()));
  
                        },
                        child: 
                        const Text(' sign up', style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF63D9F3)),)))
                  ],
                   ),
                           
               ),
              // isSigninTrue? const Text('Username or Password is incorrect'),

        
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
                         ),
            ] 
             ),
           )
           ),
      )
         );
}
}