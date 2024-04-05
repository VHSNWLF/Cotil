// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/material.dart';

class GameJokenpo extends StatefulWidget {
  const GameJokenpo({super.key});

  @override
  State<GameJokenpo> createState() => _GameJokenpoState();
}

class _GameJokenpoState extends State<GameJokenpo> {

  final imgPedra = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/pedra.png"),);
  final imgPapel = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/papel.png"),);
  final imgTesoura = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/tesoura.png"),);
  final pedra = SizedBox(height: 50, width: 100, child: Text("Pedra"),);
  final papel = SizedBox(height: 50, width: 100, child: Text("Papel"),);
  final tesoura = SizedBox(height: 50, width: 100, child: Text("Tesoura"),);
  Text result2 = Text("");
  String result = "";
  Widget escolhaIA = SizedBox.shrink();
  SizedBox imageR = SizedBox(height: 50, width: 100, child: Image.asset(""));
  

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

        result2,
        
        escolhaIA,

        Text("Escolha Pedra, Papel ou Tesoura", style: TextStyle(
          fontSize: 20,
        ),),

        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            child: imgPedra,
            onTap: () {
              int opc = Random().nextInt(3);
              if(opc == 1){
                result2 = Text("Escolha do App");
                escolhaIA = SizedBox(height: 50, width: 100, child: Image.asset("assets/images/pedra.png"));
                result = "EMPATE. O computador escolheu Pedra";
              }else if(opc == 2){
                result2 = Text("Escolha do App");
                escolhaIA = SizedBox(height: 50, width: 100, child: Image.asset("assets/images/papel.png")) ;
                result = "PERDEU. O computador escolheu  Papel";
              }else{
                result2 = Text("Escolha do App");
                escolhaIA = SizedBox(height: 50, width: 100, child: Image.asset("assets/images/tesoura.png"));
                result = "VENCEU. O computador escolheu Tesoura";
              } setState(() {});
              Future.delayed(Duration(seconds: 4, milliseconds: 500), () {
                result = '';
                result2 = Text("");
                escolhaIA = Text("");
                setState(() {});
              },);
            },
          ),

          GestureDetector(
            child: imgPapel,
            onTap: () {
              int opc = Random().nextInt(3);
              if(opc == 1){
                result2 = Text("Escolha do App");
                escolhaIA = SizedBox(height: 50, width: 100, child: Image.asset("assets/images/pedra.png"));
                result = "VENCEU. O computador escolheu Pedra";
              }else if(opc == 2){
                result2 = Text("Escolha do App");
                escolhaIA = SizedBox(height: 50, width: 100, child: Image.asset("assets/images/papel.png"));
                result = "EMPATE. O computador escolheu  Papel";
              }else{
                result2 = Text("Escolha do App");
                escolhaIA = SizedBox(height: 50, width: 100, child: Image.asset("assets/images/tesoura.png"));
                result = "PERDEU. O computador escolheu Tesoura";
              } setState(() {});
              Future.delayed(Duration(seconds: 4, milliseconds: 500), () {
                result = '';
                result2 = Text("");
                escolhaIA = Text("");
                setState(() {});
              },);
            },
          ),

          GestureDetector(
            child: imgTesoura,
            onTap: () {
              int opc = Random().nextInt(3);
              if(opc == 1){
                result2 = Text("Escolha do App");
                escolhaIA = SizedBox(height: 50, width: 100, child: Image.asset("assets/images/pedra.png"));
                result = "PERDEU. O computador escolheu Pedra";
              }else if(opc == 2){
                result2 = Text("Escolha do App");
                escolhaIA = SizedBox(height: 50, width: 100, child: Image.asset("assets/images/papel.png"));
                result = "VENCEU. O computador escolheu  Papel";
              }else{
                result2 = Text("Escolha do App");
                escolhaIA = SizedBox(height: 50, width: 100, child: Image.asset("assets/images/tesoura.png"));
                result = "EMPATE. O computador escolheu Tesoura";
              } setState(() {});
              Future.delayed(Duration(seconds: 4, milliseconds: 500), () {
                result = '';
                result2 = Text("");
                escolhaIA = Text("");
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