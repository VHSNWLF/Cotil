// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Pessoa extends StatefulWidget {
  String frase = "";

  Pessoa(this.frase, {super.key});

  @override
  State<Pessoa> createState() => _PessoaState();
}

class _PessoaState extends State<Pessoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pessoa", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),

      body: Center(child: Column(children: [
        Text(widget.frase),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Voltar"))
      ],),)
    );
  }
}