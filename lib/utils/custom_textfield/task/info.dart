// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:kendra_todo/provider/add_provider.dart';
import 'package:kendra_todo/provider/todo_provider.dart';
import 'package:kendra_todo/utils/custom_textfield/home1/dashboard.dart';
import 'package:kendra_todo/utils/custom_textfield/task/todo_list.dart';
import 'package:kendra_todo/widgets/setting/logout.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Info extends StatefulWidget {

    final String description;
    final String startTime;
    final String createdDate;
    final String title;


   Info({Key? key, required this.title, required this.description, required this.startTime, required this.createdDate}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  final dateInput = TextEditingController();

  final timeInput = TextEditingController();

  final _description = TextEditingController();

  //final _title = TextEditingController();

  late UserProvider _userProvider;

  late TodoProvider _todoProvider;

      bool completed = false;
      
        

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userProvider = UserProvider();
  }
  @override
  Widget build(BuildContext context) {
  _userProvider=context.read<UserProvider>();
   _todoProvider=context.read<TodoProvider>();
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
            child: Consumer<TodoProvider>(
              builder: (context, todoProvider, child){
                  final todos = todoProvider.todos;
              return Column(
                children: [
                  SizedBox(height:MediaQuery.of(context).size.height/20),
                  
                   Row(
                    children: [
                      GestureDetector(
                        child: const Icon(Icons.arrow_back_ios, color: Colors.blue, size: 18,),
                        onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Todolist(startTime: '', createdDate: '',)));
                  
                        }
                        ,),
                      const Text('Task Details', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 1),)
                    ],
                  ),
                    
                  SizedBox(height:MediaQuery.of(context).size.height/30),
                  
                    Row(
                    children: [
                      Text(widget.title, style:  const TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontSize: 18),),
                       const Padding(
                        padding: EdgeInsets.only(left:8.0),
                        child: Icon(Icons.note_alt_outlined, color: Colors.white,),
                      ),
                    ],
                  ),
                  SizedBox(height:MediaQuery.of(context).size.height/80),
                  
                   Row(
                    children: [
                      const Icon(Icons.calendar_month, color: Colors.white, size: 15,),
                      Text('${widget.createdDate}|',style: const TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontSize: 12), ),
                      const Icon(Icons.timelapse, color: Colors.white, size: 15,),
                      Text(widget.startTime,style: const TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontSize: 12),)
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
                     child:  Text(widget.description
                     , style: const TextStyle(fontFamily: "Poppins", fontSize: 14, color: Colors.white),),
                   ),
                  
                SizedBox(height: MediaQuery.of(context).size.height/15),
                  
                  
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
                        onPressed: () async{
                             
                            
                            //print("resullllll ");
                               try {
                                final Map<String, dynamic>? currentUser = _userProvider.currentUser;
                                if (currentUser != null) {
                                  
                                  final String fullname = currentUser['fullname'] ?? 'Full name not available';
                                    final int userId = currentUser['id'] ?? 0;
                                    final String createdDate = dateInput.text;
                                    final  String startTime= timeInput.text;
                             
                                  String result = await  _todoProvider.addItems( _description.text.trim(), dateInput.text.trim(), timeInput.text.trim(), completed, userId,);

                                     print("resullllll $result ");

                                    // ignore: unrelated_type_equality_checks
                                    if (result.isNotEmpty) {
                                        
                                       ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        behavior: SnackBarBehavior.floating,
                                        margin: EdgeInsets.only(
                                          bottom: MediaQuery.of(context).size.height - 100,
                                          left: 10,
                                          right: 10,
                                        ),
                                        content: const Text('Successfully added'),
                                      ),
                                    );
                                    Navigator.push(context, MaterialPageRoute(builder: ((context) => Todolist(startTime: startTime, createdDate: createdDate))));
                                    }else{
                                    print('failed to add task to  $fullname');
                                    }
                                }
                               } catch (e) {
                                 print('$e');
                               }
                         
                              
                      
                          } 
                        , 
                           
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
              ]);
   } ),
          ),
          ),
      )
    );
  }
}
