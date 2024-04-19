// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_forms/cadastro.dart';

class MyForms extends StatefulWidget {
  const MyForms({super.key});

  @override
  State<MyForms> createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {
  final imagem = SizedBox(height: 100, width: 100, child: Image.asset(""),);
  String curso = "";
  bool a1 = false;
  bool a2 = false;
  bool a3 = false;
  bool permitirNot = false;
  List<String> interesse = [];
  TextEditingController controladorTexto = TextEditingController();
  Pessoa p = Pessoa.v();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário de interesse e oficinas",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),),
        backgroundColor: Colors.blue.shade300
      ),

      body: SingleChildScrollView(child: Center(child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0), // Defina o padding desejado aqui
          child: imagem,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0), // Defina o padding desejado aqui
          child:TextField(
          controller: controladorTexto,
          onChanged: (value) {
            print("Nome: "+value);
            setState(() {
            });
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: "Nome:",
            prefixIcon: Icon(Icons.face),
          ),
        ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0), // Defina o padding desejado aqui
          child: TextField(
          controller: controladorTexto,
          onChanged: (value) {
            print("Email: "+value);
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: "E-mail:",
            prefixIcon: Icon(Icons.face),
          ),
        ),
        ),

        Text("Tipo de Curso:", style: TextStyle(fontWeight: FontWeight.bold),),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0), // Defina o padding desejado aqui
          child:Row(mainAxisAlignment: MainAxisAlignment.start,children: [
          Text("Somente Técnico"),
          Radio(
            value: "Somente Técnico",
            groupValue: curso,
            onChanged: (value) {
              curso = value!;
              setState(() {});              
            },
          ),

          Text("Integrado ao médio"),
          Radio(
            value: "Integrado ao médio",
            groupValue: curso,
            onChanged: (value) {
              curso = value!; 
              setState(() {});             
            },
          ), 
          
        ],)
        ),
Divider(thickness: 1, color: Colors.black,),
        Text("Oficinas de interesse:", style: TextStyle(fontWeight: FontWeight.bold),),
       
        CheckboxListTile(
          title: Text("Escrita cientifíca"),
          value: a1,
          onChanged: (value) {
            a1 = value!;
            if (a3 == true){
              interesse.add("Escrita cientifíca");
            }
            setState(() {});
          },
          ),

         CheckboxListTile(
          title: Text("Literatura Africana"),
          value: a2,
          onChanged: (value) {
            a2 = value!;
            if (a3 == true){
              interesse.add("Literatura Africana");
            }
            setState(() {});
          },
          ),

          CheckboxListTile(
          title: Text("Artes"),
          value: a3,
          onChanged: (value) {
            a3 = value!;
            if (a3 == true){
              interesse.add("Artes");
            }
            setState(() {});
          },
          ),
          Divider(thickness: 1, color: Colors.black,),

          SwitchListTile(
            title: Text("Permitir o envio de notificações no email"),
            value: permitirNot,
            onChanged: (value) {
              permitirNot = value;
              setState(() {});
            },
            ),

            Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0), // Defina o padding desejado aqui
          child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            ElevatedButton(onPressed: () {
            setState(() {
              
            });
          }, child: Text("Enviar", style: TextStyle(
            color: Colors.white,
          ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),),

          SizedBox(width: 30,),

            ElevatedButton(onPressed: () {
            setState(() {});
          }, child: Text("Cancelar", style: TextStyle(
            color: Colors.white,
          ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),)
          ],)
        ),

      ],),),),
    );
  }
}