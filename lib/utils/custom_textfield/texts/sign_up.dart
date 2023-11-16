import 'package:flutter/material.dart';
import 'package:kendra_todo/provider/add_provider.dart';
import 'package:kendra_todo/utility/data_helper.dart';
import 'package:kendra_todo/utils/custom_textfield/home1/dashboard.dart';
import 'package:kendra_todo/utils/custom_textfield/texts/sign_in.dart';
import 'package:provider/provider.dart';
//import 'package:shared_preferences/shared_preferences.dart';


// ignore: must_be_immutable
class SignUp extends StatefulWidget {
  
    const SignUp({super.key});

      @override
  State<SignUp> createState()  => _SignUp();
}

class _SignUp extends State<SignUp> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fullnameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final databaseHelper = DatabaseHelper();
      


 bool isVisible= false;
  bool isLoading = false;
  bool doesUserExist = false;
  late UserProvider _userProvider;
  
  

  List<Map<String, dynamic>> tasks = [];
  

 

  @override
  Widget build(BuildContext context) {
    _userProvider=context.read<UserProvider>();
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
                                    if (value!.length < 3) {
                                      return 'Name must be more than 2 charater';
                                    } else if( value.isEmpty){
                                      return 'Please enter text';
                                    }
                                    return null;
                                  },
                                  
                                  controller: _fullnameController,
                                  decoration: const InputDecoration(
                                    labelText: "Username",
                                    filled: true,
                                    fillColor: Color.fromARGB(255, 241, 240, 240),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none
                                    ),
                                    prefixIcon: Padding(padding: EdgeInsets.all(0),
                                    child: Icon(Icons.person,  color: Colors.black),) 
                                  ),
                                  keyboardType: TextInputType.text,
                                 ),
                               ),
                         ),
                     
                         Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/1.1,
                      height: MediaQuery.of(context).size.height/15,
                                 child: TextFormField(
                                  controller: _emailController,
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
                                  keyboardType: TextInputType.emailAddress,
                                 ),
                               ),
                         ),
                     
                         Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/1.1,
                      height: MediaQuery.of(context).size.height/15,
                                 child: TextFormField(
                                  validator: (value) {
                                     if (value!.length <= 6) {
                                        return 'Password must be of 8 digit';
                                      } else if( value.isEmpty){
                                        return 'Please enter text';
                                      }return null;
                                    },
                                  
                                  controller: _passwordController,
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
                                  keyboardType: TextInputType.visiblePassword,
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
                            onPressed:  
                          ()async  {
                            if (_formKey.currentState!.validate()) {
                                        setState(() {
                                  isLoading = true;
                                });
 
                               bool response= await _userProvider.storeUser(_fullnameController.text.trim(), _emailController.text.trim(), _passwordController.text.trim(), tasks);

                               if (response) {
                                // signup is successful 
                                // ignore: use_build_context_synchronously
                              Future.delayed(const Duration(seconds:3),(){
                                  setState(() {
                                  isLoading = true;
                                });
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Dashboard()));

                                }); 

                               } else {
                                // signup has failed
                                setState(() {
                                  doesUserExist = true;
                                  isLoading = false; // Reset the loading state if sign-up fails

                                  });            
          

                            }
                            
                                }
          
                             },

                             child: isLoading? const CircularProgressIndicator(color: Colors.white,): const Text('Sign up', style: TextStyle( color: Colors.white),)
                            ),
                        ),
                      ),
                 ],
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
                           height: MediaQuery.of(context).size.height/18,
                      child: GestureDetector(
                        onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  const SignIn()));

                        },
                        child: const Text(' sign in', style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF63D9F3)),)))
                  ],
                           ),
               ),
              doesUserExist? const Text('Username or email  already exist', style: TextStyle(color: Colors.red),): const SizedBox(),

        
               SizedBox(
                width: MediaQuery.of(context).size.width/1.2,
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