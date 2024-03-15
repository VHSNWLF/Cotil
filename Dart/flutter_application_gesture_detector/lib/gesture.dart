// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class GestureDetector1 extends StatefulWidget {
  const GestureDetector1({super.key});

  @override
  State<GestureDetector1> createState() => _GestureDetectorState();
}

class _GestureDetectorState extends State<GestureDetector1> {

  final imagem1 = SizedBox(height: 200, width: 200, child: Image.asset("assets/images/bridge-8608105_1280.jpg"),);
  final imagem2 = SizedBox(height: 200, width: 200, child: Image.asset("assets/images/lake-2608425_1280.jpg"),);
  final imagem3 = SizedBox(height: 200, width: 200, child: Image.asset("assets/images/mountains-1624284_1280.jpg"),);
  String escolha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Detector", style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: SingleChildScrollView(child: Center(child: Column(children: [
        GestureDetector(
          child: imagem1,
          onTap: () {
            escolha = "ponte";
            setState(() {});
          },
        ),

        GestureDetector(
          child: imagem2,
          onTap: () {
            escolha = "Visao bonitona";
            setState(() {});
          },
        ),
        Text("Estou selecionando: " + escolha),
        imagem3,
      ],)),
    )
    );
  }
}