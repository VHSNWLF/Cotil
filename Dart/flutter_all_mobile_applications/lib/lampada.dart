// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Lampada extends StatefulWidget {
  const Lampada({super.key});

  @override
  State<Lampada> createState() => _LampadaState();
}

class _LampadaState extends State<Lampada> {

  Image lampadaAcesa = Image.asset("assets/images/lampada-acesa.jpg");
  Image lampadaApagada = Image.asset("assets/images/lampada-apagada.jpg");
  late Image lampadaAtual = lampadaApagada;
  Text texto = Text("Clique aqui para acender a lampada");
  String status = ("Lampada apagada");

  void mudaEstado(){
    if (lampadaAtual == lampadaApagada){
      lampadaAtual = lampadaAcesa;
      texto = Text("Clique aqui para apagar a lampada");
      status = ("Lampada acesa");
    }else{
      lampadaAtual = lampadaApagada;
      texto = Text("Clique aqui para acender a lampada");
      status = ("Lampada apagada");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
      ),

      body: Center(child: Column(children: [
        lampadaAtual,
        Text("Status: $status"),
        ElevatedButton(onPressed: () {
          mudaEstado();
          setState(() {
            
          });
        }, child: texto)
      ],)),
    );
  }
}