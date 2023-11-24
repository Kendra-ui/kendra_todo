import 'package:flutter/material.dart';
import 'package:kendra_todo/utils/custom_textfield/task/info.dart';
import 'package:kendra_todo/widgets/setting/calendar.dart';

// ignore: must_be_immutable
class Settings extends StatefulWidget {

   const Settings({super.key});

      @override
  State<Settings> createState()  => _Settings();
}

class _Settings extends State<Settings> {

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
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              Padding(
                padding: const EdgeInsets.only(left:24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                
                    SizedBox(
                          height: MediaQuery.of(context).size.height/20,
                          width: MediaQuery.of(context).size.width/13,
                          child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: () { 
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  Info(description: '', startTime: '', createdDate: '', title: '',)));
                      
                       },
                       child: const Icon(Icons.arrow_back_ios, color: Colors.blue, size: 20,),)
                    ),
                    
                    const Text('Settings', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontWeight: FontWeight.bold, fontSize: 25),),
                    const SizedBox.shrink()
                  ],
                ),
              ),
                    SizedBox(height: MediaQuery.of(context).size.height/30,),

                 const ListTile(
                    leading:  Icon(Icons.person_rounded, color: Colors.white,),
                    title: Text("Profile", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,),
                  ),
      
                     SizedBox(height: MediaQuery.of(context).size.height/100),
      
                    const Divider(color: Colors.white,),
      
                   const ListTile(
                    leading:  Icon(Icons.chat_bubble_outline_rounded, color: Colors.white,),
                    title: Text("Conversations", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,),
                  ),
      
                     SizedBox(height: MediaQuery.of(context).size.height/100),
      
                    const Divider(color: Colors.white,),
      
                   const ListTile(
                    leading:  Icon(Icons.lightbulb, color: Colors.white,),
                    title: Text("Projects", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,),
                  ),
      
                     SizedBox(height: MediaQuery.of(context).size.height/100),
      
                    const Divider(color: Colors.white,),
      
                   const ListTile(
                    leading:  Icon(Icons.policy, color: Colors.white,),
                    title: Text("Terms and Policies", style: TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'Poppins', letterSpacing: 1),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.43,),
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
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Calendar()));
      
                        }, 
                      icon:const Icon(Icons.logout_rounded, color: Color.fromARGB(255, 250, 7, 19), size: 20,),
                      label: const Text('Logout', style: TextStyle(color: Colors.red, fontFamily: 'Poppins'),),
                      ),
                    ),
                  ),
      
                            
            ],
          ),
        ),
      )
        );
  }
}