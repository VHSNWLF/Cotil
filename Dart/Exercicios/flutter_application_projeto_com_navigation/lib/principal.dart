// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  final appBarTitle = Text("Harry Potter", style: TextStyle(
          color: Colors.white60,
          fontFamily: "HARRYP__",
          fontSize: 50,
        ),);
  
  final imgVarinha = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/Ícone-Varinha-Harry-Potter-PNG.png"),); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarTitle,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wp2600449.webp"),
            fit: BoxFit.cover
          )
        ),
        child: Column(children: [
          imgVarinha
        ],),
      ),
    );
  }
}