// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, avoid_print

import 'dart:ffi';

import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String amorAula = "";
  String maisCedo = "";
  bool sono = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        SizedBox(height: 30,),
        Text("RADIO", style: TextStyle(fontSize: 30),),
        Text("Eu amo a aula da Tania", style: TextStyle(fontSize: 20),),

        Text("Sim"),
        Radio(
          value: "SIM",
          groupValue: amorAula,
          onChanged: (value) {
            amorAula = value!;
            setState(() {});
          },
          ),

        Text("Não"),
        Radio(
          value: "NÃO",
          groupValue: amorAula,
          onChanged: (value) {
            amorAula = value!;
            setState(() {});
          },
          ),

        RadioListTile(
          title: Text("A Tania esta boazinha"),
          subtitle: Text("Só hoje"),
          secondary: Icon(Icons.sentiment_satisfied_alt_outlined),
          value: "SIM",
          groupValue: maisCedo,
          onChanged: (value) {
            maisCedo = value!;
            setState(() {});
          },),

        RadioListTile(
          title: Text("A Tania esta mauzinha"),
          subtitle: Text("Só hoje"),
          secondary: Icon(Icons.sentiment_dissatisfied),

          value: "NÃO",
          groupValue: maisCedo,
          onChanged: (value) {
            maisCedo = value!;
            setState(() {});
          },),

        SizedBox(height: 30,),
        Text("SWITCH", style: TextStyle(fontSize: 30),),

        SwitchListTile(
          secondary: Icon(Icons.bed_outlined),
          title: Text("Estou com sono"),
          subtitle: Text("Fui dormir mó tarde"),
          value: sono,
          onChanged: (value) {
            sono = value;
            setState(() {});
          },
          ),

       ElevatedButton(onPressed: () {
          print("Amo a aula: " + amorAula);
          print("Sair mais cedo: " + maisCedo);
          print("Switch: " + sono.toString());
          setState(() {});
        }, child: Text("OK")),


      ],),),
    );
  }
}