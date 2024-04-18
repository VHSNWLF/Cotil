// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_forms/aluno.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController raController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  List<Aluno> listaAl = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Cadastrar"),centerTitle: true,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        TextField(
          controller: raController,
          decoration: InputDecoration(labelText: "Digite o ra"),
        ),
        SizedBox(height: 20,),
        TextField(
          controller: nomeController,
          decoration: InputDecoration(labelText: "Digite o nome",enabledBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(20))),
        ),
        SizedBox(height:20),
        ElevatedButton(onPressed: (){
            int ra = int.parse(raController.text);
            String nome = nomeController.text;
            Aluno al = new Aluno(ra,nome);
            listaAl.add(al);
            mostrar();
        }, child:Text("Cadatrar"))
      ]),),
    );
  }

  void mostrar()
  {
    listaAl.forEach((Aluno a) { 
        print(a.getRa.toString()+ "" + a.nome);
    });
  }
}