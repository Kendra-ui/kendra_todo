import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  const Text1({super.key});

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
          Column(
        children: [
          Padding(padding: const EdgeInsets.all(50),
        child: Image.asset('assets/images/Checkmark.png'),
        ),
        const Text('Welcome Back to DO IT, ', )
        ],
        )
    ),
    );
  }
}