// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  Image sinMais = Image.asset("assets/images/adicionar.png");
  Image sinMenos = Image.asset("assets/images/sinal-de-menos.png");
  int cont = 0;
  final figuraContador = SizedBox(
    height: 400,
    width: 400,
    child: Image.asset('assets/images/undraw_Calculator_re_alsc.png'),
      );

  




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),

      body: Center(child: Column(children: [
        figuraContador,
        Text("Contador usando Stateful Widget", style: TextStyle(
          fontSize: 23,
        ),),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          
          FloatingActionButton(onPressed: () {
            cont += 1;
            setState(() {
            });
          }, child: Text("+"),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0)),
          ),


          SizedBox(width: 20,),

          DecoratedBox(decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(),
          color: Colors.blue.shade200
          ),
          child: Padding(
          padding: EdgeInsets.all(20),
          child: Text("$cont"),
        ) 
        ),


          SizedBox(width: 20,),


          FloatingActionButton(onPressed: () {
            cont -= 1;
            setState(() {
            });
          }, child: Text("-"),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0), // Ajuste o valor do raio conforme necessário
  ),)
          

        ],),
        ElevatedButton(onPressed: () {
          cont = 0;
          setState(() {
            
          });
        }, child: Text("LIMPAR"))
      ],)),
    );
  }
}