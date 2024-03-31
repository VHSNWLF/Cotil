// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/material.dart';

class GameJokenpo extends StatefulWidget {
  const GameJokenpo({super.key});

  @override
  State<GameJokenpo> createState() => _GameJokenpoState();
}

class _GameJokenpoState extends State<GameJokenpo> {

  final imgPedra = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/papel.png"),);
  final imgPapel = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/papel.png"),);
  final imgTesoura = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/tesoura.png"),);
  final pedra = SizedBox(height: 50, width: 100, child: Text("Pedra"),);
  final papel = SizedBox(height: 50, width: 100, child: Text("Papel"),);
  final tesoura = SizedBox(height: 50, width: 100, child: Text("Tesoura"),);
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedra, Papel, Tesoura"),
        centerTitle: true,
        backgroundColor: Colors.green.shade300,
      ),

      body: SingleChildScrollView(child: Container(child: Column(children: [
        SizedBox(height: 20,),

        Text("Escolha Pedra, Papel ou Tesoura", style: TextStyle(
          fontSize: 20,
        ),),

        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            child: imgPedra,
            onTap: () {
              int opc = Random().nextInt(3);
              if(opc == 1){
                result = "EMPATE. O computador escolheu Pedra";
              }else if(opc == 2){
                result = "PERDEU. O computador escolheu  Papel";
              }else{
                result = "VENCEU. O computador escolheu Tesoura";
              } setState(() {});
              Future.delayed(Duration(seconds: 1, milliseconds: 500), () {
                result = '';
                setState(() {});
              },);
            },
          ),

          GestureDetector(
            child: imgPapel,
            onTap: () {
              int opc = Random().nextInt(3);
              if(opc == 1){
                result = "VENCEU. O computador escolheu Pedra";
              }else if(opc == 2){
                result = "EMPATE. O computador escolheu  Papel";
              }else{
                result = "PERDEU. O computador escolheu Tesoura";
              } setState(() {});
              Future.delayed(Duration(seconds: 1, milliseconds: 500), () {
                result = '';
                setState(() {});
              },);
            },
          ),

          GestureDetector(
            child: imgTesoura,
            onTap: () {
              int opc = Random().nextInt(3);
              if(opc == 1){
                result = "PERDEU. O computador escolheu Pedra";
              }else if(opc == 2){
                result = "VENCEU. O computador escolheu  Papel";
              }else{
                result = "EMPATE. O computador escolheu Tesoura";
              } setState(() {});
              Future.delayed(Duration(seconds: 1, milliseconds: 500), () {
                result = '';
                setState(() {});
              },);
            },
          ),

        ],),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(width: 60,),
          pedra,
          papel,
          tesoura,
        ],),
        Text(result),

      ]),)),
    );
  }
}