// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyVetor extends StatefulWidget {
  const MyVetor({super.key});

  @override
  State<MyVetor> createState() => _MyVetorState();
}

class _MyVetorState extends State<MyVetor> {

  List<int> vetor = [5,4,7,3,7,9,6];
  String textoVetor = "";
  String textoSomaVetor = "";
  String textoMenorVetor = "";
  String textoMaiorVetor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Analisando vetores", style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),

      body: Center(child: Column(children: [
        
        
        SizedBox(height: 30,),
        Text("Vetor "  + textoVetor, style: TextStyle(
          fontSize: 20,
        ),),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {
          mostrarVetor();
          setState(() {});
        }, child: Text("Mostrar Vetor", style: TextStyle(
          fontWeight: FontWeight.bold
        ),)),
        
        
        SizedBox(height: 30,),
        Text("Soma: "  + textoSomaVetor, style: TextStyle(
          fontSize: 20,
        ),),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {
          int somavet = 0;
          for (int i=0;i<vetor.length;i++){
            somavet += vetor[i];
          }
          textoSomaVetor = somavet.toString();
          setState(() {});
        }, child: Text("Somar valores dos Vetores", style: TextStyle(
          fontWeight: FontWeight.bold
        ),)),
        
        
        SizedBox(height: 30,),
        Text("Menor Elemento "  + textoMenorVetor, style: TextStyle(
          fontSize: 20,
        ),),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {
          vetor.sort();
          textoMenorVetor = vetor[0].toString();
          setState(() {});
        }, child: Text("Mostrar o maior elemento do Vetor", style: TextStyle(
          fontWeight: FontWeight.bold
        ),)),



        SizedBox(height: 30,),
        Text("Maior Elemento "  + textoMaiorVetor, style: TextStyle(
          fontSize: 20,
        ),),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {
          vetor.sort();
          textoMaiorVetor = vetor.last.toString();
          setState(() {});
        }, child: Text("Mostrar o maior elemento do Vetor", style: TextStyle(
          fontWeight: FontWeight.bold
        ),))



      ],),),
    );
  }

  void mostrarVetor(){
    textoVetor = "";
    for (int i=0;i<vetor.length;i++){
      textoVetor += vetor[i].toString() + " ";
    }
  }
}