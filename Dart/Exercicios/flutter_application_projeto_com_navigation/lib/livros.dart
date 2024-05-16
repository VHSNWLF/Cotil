// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class Livros extends StatefulWidget {
  const Livros({super.key});

  @override
  State<Livros> createState() => _LivrosState();
}

class _LivrosState extends State<Livros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Livros", style: TextStyle(
          color: Colors.white,
          fontFamily: "HARRYP__",
          fontSize: 50,
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
          SizedBox(height: 20,),

          Text("Livros|Filmes Ordem Cronologica", style: TextStyle(
          color: Colors.white,
          fontFamily: "HARRYP__",
          fontSize: 30,
        ),textAlign: TextAlign.center,),

          SizedBox(height: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("1° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
            Text("BLA1", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
          ],),
            SizedBox(height: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("2° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
            Text("BLA2", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
          ],),
            SizedBox(height: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("3° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
            Text("BLA3", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
          ],),
            SizedBox(height: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("4° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
            Text("BLA4", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
          ],),
            SizedBox(height: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("5° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
            Text("BLA5", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
          ],),
            SizedBox(height: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("6° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
            Text("BLA6", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
          ],),
            SizedBox(height: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("7° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
            Text("BLA7", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
          ],),
            SizedBox(height: 20,),
          
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("8° F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
            Text("BLA8", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 30,
            ),textAlign: TextAlign.center,),
          ],),
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
        ])
        )
    );
  }
}