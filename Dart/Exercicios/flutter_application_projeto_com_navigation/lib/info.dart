// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  String nome = "";
  String desc = "";
  String dono = "";

  Info(this.nome, this.desc, this.dono, {super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(widget.nome, style: TextStyle(
          color: Colors.black,
          fontFamily: "HARRYP__",
          fontSize: 50,
          shadows: [
            Shadow(
              color: Colors.redAccent.shade700,
              offset: Offset(2, 2),
              blurRadius: 3
            )
          ]
        ),),
      ),

      body: Center(child: Column(children: [
        Text(widget.nome),
        SizedBox(height: 20,),
        Text(widget.desc),
        SizedBox(height: 20,),
        Text(widget.dono),
        SizedBox(height: 20,),
      ],),)
    );
  }
}