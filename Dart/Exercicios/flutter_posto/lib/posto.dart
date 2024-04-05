// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyPosto extends StatefulWidget {
  const MyPosto({super.key});

  @override
  State<MyPosto> createState() => _MyPostoState();
}

class _MyPostoState extends State<MyPosto> {
  final imagePosto = SizedBox(height: 80, width: 80, child: Image.asset("assets/images/bomba-de-gasolina.png"),);
  TextEditingController controladorTexto1 = TextEditingController();
  TextEditingController controladorTexto2 = TextEditingController();
  String valor1 = "";
  String valor2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina", style: TextStyle(
          fontSize: 20,
        ),),
        backgroundColor: Colors.greenAccent.shade200,
        centerTitle: true,
      ),

      body: SingleChildScrollView(child: Center(child: Column(children: [
        
        SizedBox(height: 30,),
        imagePosto,
        SizedBox(height: 30,),

        TextField(
          controller: controladorTexto1,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.greenAccent.shade200)),
              labelText: "Digite o preço do sla oq",
              prefixIcon: Icon(Icons.abc),
          ),
        ),

        SizedBox(height: 40,),

        TextField(
          controller: controladorTexto2,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.greenAccent.shade200)),
              labelText: "Digite o preço do sla oq2",
              prefixIcon: Icon(Icons.abc),
          ),
        ),


      ],)),),
    );
  }
}