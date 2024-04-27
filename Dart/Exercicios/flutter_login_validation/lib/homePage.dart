// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seja Bem-Vindo!", style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}