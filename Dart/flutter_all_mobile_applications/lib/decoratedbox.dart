// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tutoras2 extends StatelessWidget {
   Tutoras2({super.key});

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(child: Column(children: [
        SizedBox(height: 28,),
        DecoratedBox(decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(),
          boxShadow: [
            BoxShadow(
            color: Colors.yellow,
            blurRadius: 15.0,
            )
      ],
          color: Colors.green,
          ),
          child: Padding(
          padding: EdgeInsets.all(50),
          child: Text("Padding"),
        ) 
        ),
      ],)),
    );
  }
}