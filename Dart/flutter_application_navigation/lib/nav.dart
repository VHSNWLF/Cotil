// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_navigation/favorito.dart';
import 'package:flutter_application_navigation/pessoa.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  List<String> frasesMotivacionais = ["\nO amor é lindo","\nAi zé da manga", "\nisso é gambaoumangaga"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo navegação", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: ((context) => Pessoa("Essa aula é muito boa"))));
          }, icon: Icon(Icons.person, color: Colors.greenAccent,),
          ),
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => Favorito(frasesMotivacionais))));
          }, icon: Icon(Icons.favorite, color: Colors.pinkAccent,),
          ),
        ],
      ),

      body: Center(child: Column(children: [

        SizedBox(height: 20,),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/pessoa');
        }, child: Text("Pessoa")),
        SizedBox(width: 20,),


        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/favorito');
        }, child: Text("Favorito")),
        SizedBox(height: 20,),
        ],),
        


      ],),),
    );
  }
}