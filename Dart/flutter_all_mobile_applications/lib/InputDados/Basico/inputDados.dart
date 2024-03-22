// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class InputDados extends StatefulWidget {
  const InputDados({super.key});

  @override
  State<InputDados> createState() => _InputDadosState();
}

class _InputDadosState extends State<InputDados> {

  TextEditingController controladorTexto = TextEditingController();
  TextEditingController controladorTexto2 = TextEditingController();
  String textoDigitado = "";
  String textoDigitado2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
        
        TextField(
          controller: controladorTexto,
          onChanged: (value) {
            print(value);
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            fillColor: Colors.grey.shade300,
            labelText: "Digite aqui",
            prefixIcon: Icon(Icons.abc, color: Colors.red,),
            suffixIcon: Icon(Icons.search, color: Colors.red,),
          ),
        ),

        SizedBox(height: 30,),

        TextField(
          controller: controladorTexto2,
          onChanged: (value) {
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            fillColor: Colors.grey.shade300,
            labelText: "Digite aqui",
            prefixIcon: Icon(Icons.abc, color: Colors.red,),
            suffixIcon: Icon(Icons.search, color: Colors.red,),
          ),
          style: TextStyle(
            
          ),
        ),

        SizedBox(height: 30,),

        ElevatedButton(onPressed: () {
          textoDigitado = controladorTexto.text;
          textoDigitado2 = controladorTexto2.text;
          setState(() {});
        }, child: Text("clique aqui")),
        Text("Você digitou 1: " + textoDigitado + "\n" + "Você digitou 2: " + textoDigitado2)
      ],)),
    );
  }
}