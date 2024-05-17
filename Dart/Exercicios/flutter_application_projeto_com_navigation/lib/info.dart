// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, sort_child_properties_last

import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  String nome = "";
  String desc = "";
  String dono = "";
  List<String> listaobj = [];

  Info(this.nome, this.desc, this.dono, this.listaobj, {super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("RELIQUIAS DA MORTE", style: TextStyle(
          color: Colors.black,
          fontFamily: "HARRYP__",
          fontSize: 30,
          shadows: [
            Shadow(
              color: Colors.redAccent.shade700,
              offset: Offset(2, 2),
              blurRadius: 3
            )
          ]
        ),),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bckgrndBlack.jpg"),
            fit: BoxFit.cover
          )
        ),

        child: Column(children: [
        SizedBox(height: 30,),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Nome: ", style: TextStyle(
          color: Colors.redAccent,
          fontFamily: "HARRYP__",
          fontSize: 30,
        ),textAlign: TextAlign.center,),
          Text(widget.nome, style: TextStyle(
          color: Colors.white,
          fontFamily: "HARRYP__",
          fontSize: 30,
        ),textAlign: TextAlign.center,),
        ],),
        
        SizedBox(height: 20,),
        
          Text("Descricao: ", style: TextStyle(
          color: Colors.redAccent,
          fontFamily: "HARRYP__",
          fontSize: 30,
        ),textAlign: TextAlign.center,),
          Text(widget.desc, style: TextStyle(
          color: Colors.white,
          fontFamily: "HARRYP__",
          fontSize: 30,
        ),textAlign: TextAlign.center,),
        SizedBox(height: 20,),

        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Dono: ", style: TextStyle(
          color: Colors.redAccent,
          fontFamily: "HARRYP__",
          fontSize: 30,
        ),textAlign: TextAlign.center,),
          Text(widget.dono, style: TextStyle(
          color: Colors.white,
          fontFamily: "HARRYP__",
          fontSize: 30,
        ),textAlign: TextAlign.center,),
        ],),

        SizedBox(height: 20,),
        
          Text("Lista das Reliquias da Morte: ", style: TextStyle(
          color: Colors.redAccent,
          fontFamily: "HARRYP__",
          fontSize: 30,
        ),textAlign: TextAlign.center,),
          
          Text(widget.listaobj.toString(), style: TextStyle(
          color: Colors.white,
          fontFamily: "HARRYP__",
          fontSize: 30,
        ),textAlign: TextAlign.center,),
        
        SizedBox(height: 20,),
        ElevatedButton(onPressed: () {
          Navigator.pop(context);
        },
         child: Text("Voltar", style: TextStyle(color: Colors.white),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.white)
            )
          ),
        )
      ],),)
    );
  }
}