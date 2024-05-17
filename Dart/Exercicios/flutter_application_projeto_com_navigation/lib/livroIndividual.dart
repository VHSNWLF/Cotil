// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LivroIndiv extends StatefulWidget {
  String nome = "";
  String sinopse = "";
  String urlImg = "";

  LivroIndiv(this.nome, this.sinopse, this.urlImg, {super.key});

  @override
  State<LivroIndiv> createState() => _LivroIndivState();
}

class _LivroIndivState extends State<LivroIndiv> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(widget.nome, style: TextStyle(
          color: Colors.white,
          fontFamily: "HARRYP__",
          fontSize: 30,
        ),),
      ),

      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bckgrndBlack.jpg"),
            fit: BoxFit.cover
          )
        ),

        child: Column(children: [
          SizedBox(height: 200, width: 200, child: Image.asset("${widget.urlImg}"),),
          SizedBox(height: 10,),
          Divider(
            thickness: 1,
            color: Colors.white,
          ),
          SizedBox(height: 10,),
          Expanded(child: 
          Text(widget.sinopse, style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),))
        ])
        )
    );
  }
}