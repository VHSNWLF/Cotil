// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures, avoid_print

import 'package:flutter/material.dart';

class MyValidation extends StatefulWidget {
  const MyValidation({super.key});

  @override
  State<MyValidation> createState() => _MyValidationState();
}

class _MyValidationState extends State<MyValidation> {
  GlobalKey<FormState> chaveValidacao = GlobalKey();
  TextEditingController raController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Validação", style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: Center(child: Form(
        key: chaveValidacao,
        child: Column(children: [

          TextFormField(
            controller: raController,
            decoration: InputDecoration(
             labelText: "RA:", 
            ),
            validator: (value) {
              if(value!.isEmpty){
                return "O RA não pode estar vazio";
              }else if (int.parse(raController.text)<10){
                return "O RA deve ser maior que 6";
              }
              return null;
              },
          ),

          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
             labelText: "Nome:" 
            ),
            validator: (value) {
              if(value!.isEmpty){
                return "O Nome não pode ser vazio";
              }
              else if(value.length<3){
                return "Digite um nome com pelo menos 3 caracteres";
              }
            },
          ),

          ElevatedButton(onPressed: () {
            if(chaveValidacao.currentState!.validate()){
              print("Sucesso");
              print(raController.text);
              print(nameController.text);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Sucesso!"))
              );
              setState(() {

            });
            }
          }, child: Text("Verificar"))
        ],)
      ),
    ),
  ),
);
  }
}