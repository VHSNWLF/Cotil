// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Favorito extends StatefulWidget {
  List<String> lista = [];
  Favorito(this.lista, {super.key});

  @override
  State<Favorito> createState() => _FavoritoState();
}

class _FavoritoState extends State<Favorito> {
  String palavrasdaLista = "";
  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        title: Text("Favoritos", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),

      body: Center(child: Column(children: [
        Text(palavrasdaLista),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Voltar"))
      ],),)

    );
  }

  void mostrar(){
    for(int i=0; i< widget.lista.length; i++ ){
      palavrasdaLista = palavrasdaLista + " " + widget.lista[i];
    }
  }

}