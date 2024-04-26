// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  Image imagem = Image.asset("assets/images/undraw_Security_on_re_e491.png", width: 200, height: 200,);
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  GlobalKey<FormState> validationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          
          SizedBox(height: 60,),
          
          imagem,

          Text("LOGIN", style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurpleAccent,
            fontSize: 35,
          ),),

          Divider(
            thickness: 2, color: Colors.deepPurpleAccent
          ),

          SizedBox(height: 10,),

          Form(
            key: validationKey,
            child: Column(children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: "Nome do Usuário"),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "O nome não pode estar vazio!";
                    }
                    return null;
                  },
              ),

              SizedBox(height: 30,),

              TextFormField(
                controller: passController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: "Senha"),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "A senha não pode estar vazio!";
                    }
                    return null;
                  },
              ),

              SizedBox(height: 30,),

              ElevatedButton(onPressed: () {
                if(validationKey.currentState!.validate()){

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Sucesso!"))
                  );

                  setState(() {
                    
                  });
                }
              }, child: Text("Entrar", style: TextStyle(
                color: Colors.white,
                fontSize: 25
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                minimumSize: Size(double.infinity, 50)
              ),)
            ],)
            )
        ],),
        ),
    )
    );
  }
}