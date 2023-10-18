import 'package:flutter/material.dart';

class Info3 extends StatelessWidget {
  const Info3({super.key});

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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:50.0, left: 30),
                  child: Container(
                    width: 40,
                    height: 50,
                    alignment: Alignment.center,
                    child: ElevatedButton.icon(
                      onPressed: (){}, 
                    icon:const Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 250, 7, 19), size: 20,),
                    label: const Text(''),),
                  ),
                ),

                const Padding(
                  padding:  EdgeInsets.only(top:50.0, right: 70),
                  child: Text('Manage Your Time', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', letterSpacing: 2, fontWeight: FontWeight.bold, fontSize: 20),),
                )
              ],
            )])
        )
      );
  }
  }