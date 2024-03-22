// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_interpolation_to_compose_strings, unused_import

import 'dart:ffi';

import 'package:flutter/material.dart';

class Operations2 extends StatefulWidget {
  const Operations2({super.key});

  @override
  State<Operations2> createState() => _Operations2State();
}

class _Operations2State extends State<Operations2> {
  TextEditingController controladorValor1 = TextEditingController();
  TextEditingController controladorValor2 = TextEditingController();
  String valor1 = "";
  String valor2 = "";
  String resultado = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operações", style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(child: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [

          SizedBox(height: 50,),

          Text("Operações para aprendizado do uso do Widget TextField", style: TextStyle(
            fontSize: 20,
          ),textAlign: TextAlign.center,),

          SizedBox(height: 20,),

          TextField(
            controller: controladorValor1,
            decoration: InputDecoration(
              hintText: "ex: 1",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue), // Definindo a cor da borda
                ),
              labelText: "Digite o valor 1",
              filled: true, 
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue)), // Cor da borda quando não em foco
            ),
            
          ),

          SizedBox(height: 20,),

          TextField(
            controller: controladorValor2,
            decoration: InputDecoration(
              hintText: "ex: 2",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue), // Definindo a cor da borda
                ),
              labelText: "Digite o valor 2",
              filled: true, 
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue)
              )
            ),
          ),

          SizedBox(height: 30,),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            
            ElevatedButton(onPressed: () {
              valor1 = controladorValor1.text;
              valor2 = controladorValor2.text;
              double soma = 0;
              soma = double.parse(valor1) + double.parse(valor2);
              resultado = soma.toString();
              setState(() {});
            }, child: Text("+", style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),),

            SizedBox(width: 10,),
            
            ElevatedButton(onPressed: () {
              valor1 = controladorValor1.text;
              valor2 = controladorValor2.text;
              double sub = 0;
              sub = double.parse(valor1) - double.parse(valor2);
              resultado = sub.toString();
              setState(() {});
            }, child: Text("-", style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),),
            
            SizedBox(width: 10,),
            
            ElevatedButton(onPressed: () {
              valor1 = controladorValor1.text;
              valor2 = controladorValor2.text;
              double mult = 0;
              mult = double.parse(valor1) * double.parse(valor2);
              resultado = mult.toString();
              setState(() {});
            }, child: Text("*", style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),),
            
            SizedBox(width: 10,),
            
            ElevatedButton(onPressed: () {
              valor1 = controladorValor1.text;
              valor2 = controladorValor2.text;
              double div = 0;
              div = double.parse(valor1) / double.parse(valor2);
              resultado = div.toString();
              setState(() {});
            }, child: Text("/", style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),),
            
            SizedBox(width: 10,),
            
            ElevatedButton(onPressed: () {
              controladorValor1.text = "";
              controladorValor2.text = "";
              resultado = "";
              setState(() {});
            }, child: Text("CE", style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),),
          ],),
          
          SizedBox(height: 20,),

          Text("Resultado: " + resultado, style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),


        ]),
      ),
    ));
  }
}