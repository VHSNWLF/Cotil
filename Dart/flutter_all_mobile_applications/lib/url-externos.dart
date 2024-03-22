// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tutoras extends StatelessWidget {

  final figuraShrek = SizedBox(
    height: 150,
    width: 150,
    child: Image.asset('assets/images/Shrek(personagem).jpg'),
      );

  final textoAnta = Text(
    "Prazer, Shreka",
    style: TextStyle(
      fontFamily: 'Anta',
      fontSize: 50),
      );

   Tutoras({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        textoAnta,
        figuraShrek,
      ],)),
    );
  }
}