// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_projeto_com_navigation/info.dart';
import 'package:flutter_application_projeto_com_navigation/objetos.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  Objetos obj = Objetos.n();

  final appBarTitle = Text("Harry Potter", style: TextStyle(
          color: Colors.black,
          fontFamily: "HARRYP__",
          fontSize: 50,
          shadows: [
            Shadow(
              color: Colors.redAccent.shade700,
              offset: Offset(2, 2),
              blurRadius: 3
            )
          ]
        ),);
  
  final imgVarinha = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/Ícone-Varinha-Harry-Potter-PNG.png"),); 

  final imgPedra = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/kisspng-circle-drawing-clip-art-circle-5abaf919bfb1e0.8638367715222029057852.png"),); 
  
  final imgCapa = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/triangulo.png"),); 



  final txtCapa = SizedBox( width: 100, child: Text('Capa da Invisibilidade', style: TextStyle(
    fontSize: 20,
    color: Colors.white60,
    fontWeight: FontWeight.bold,
    fontFamily: 'Long Today'
  ),
  textAlign: TextAlign.center,
  ),
  ); 
  final txtVarinha = SizedBox( width: 100, child: Text('Varinha das Varinhas', style: TextStyle(
    fontSize: 20,
    fontFamily: 'Long Today',
    color: Colors.white60,
    fontWeight: FontWeight.bold
  ),textAlign: TextAlign.center,),);
  final txtPedra= SizedBox( width: 100, child: Text('Pedra da Resurreição', style: TextStyle(
    fontSize: 20,
    fontFamily: 'Long Today',
    color: Colors.white60,
    fontWeight: FontWeight.bold
  ),textAlign: TextAlign.center,),); 

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, "/Livros");
          }, icon: Icon(Icons.bookmark, color: Colors.redAccent,),
          ),
        ],
        title: appBarTitle,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body:  Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover
          )
        ),
        child: Column(children: [
          SizedBox(height: 450,),

          Text('RELIQUIAS DA MORTE', style: TextStyle(
            fontSize: 40,
            fontFamily: "HARRYP__",
            color: Colors.black,
            shadows: [
            Shadow(
              color: Colors.redAccent.shade700,
              offset: Offset(2, 2),
              blurRadius: 3
            )
          ]
          ),),

          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: imgVarinha,
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Info('Varinha das Varinhas', 'Varinha foda', 'Morte',obj.getListaObjetos),)
                      );
                    },
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: imgPedra,
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Info('Pedra da Resurreicao', 'Pedra que "revive" os mortos', 'Morte',obj.getListaObjetos),)
                      );
                    },
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: imgCapa,
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Info('Capa da Invisibilidade', 'Capa capaz de tornar seu portador completamente invisivel', 'Morte',obj.getListaObjetos),)
                      );
                    },
                  ),
                ),
              ],
          ),
          ),


          
          Container(
            padding: EdgeInsets.fromLTRB(30, 0, 20, 0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            txtVarinha,
            txtPedra,
            txtCapa,
          ],),
          ),


          
        ],),
      ),
    );
  }
}