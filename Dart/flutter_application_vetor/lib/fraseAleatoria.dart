// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

class RandomTexts extends StatefulWidget {
  const RandomTexts({super.key});

  @override
  State<RandomTexts> createState() => _RandomTextsState();
}

class _RandomTextsState extends State<RandomTexts> {

  final imagem = SizedBox(height: 400, width: 300, child: Image.network("https://cdn.pixabay.com/photo/2016/03/24/13/45/coffee-1276778_1280.jpg"),);
  String frase = "Toda manhã você tem duas escolhas: continuar dormindo com seus sonhos ou acordar e persegui-los!";
  int n = 0;
  List<String> frasevet = ["A cada novo dia, a cada momento, temos a nossa disposição a maravilhosa possibilidade do encontro, que traz em si infinitas oportunidades. Precisamos apenas estar atentos.",
  "Respire fundo e fique atento às surpresas deliciosas que a vida preparou para você!",
  "Nem todos os dias são bons, mas há algo bom em cada dia.",
  "Um passo de cada vez. Até meio passo serve. Siga firme, não há motivo para ter pressa.",
  "Suba o primeiro degrau com fé. Não é necessário que você veja toda a escada, apenas dê o primeiro passo.",
  "Toda manhã você tem duas escolhas: continuar dormindo com seus sonhos ou acordar e persegui-los!"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia", style: TextStyle(
          fontSize: 30,
          color: Colors.white
        ),),
        backgroundColor: const Color.fromARGB(255, 185, 156, 67),
        centerTitle: true,
      ),

      body: Center(child: Column(children: [
        imagem,
        Text(frase, style: TextStyle(
          fontSize: 20,
        ),),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: () {
          n = Random().nextInt(5);
          frase = frasevet[n];
          setState(() {});
        }, child: Text("Gerar uma nova frase"))
      ],)),
    );
  }
}