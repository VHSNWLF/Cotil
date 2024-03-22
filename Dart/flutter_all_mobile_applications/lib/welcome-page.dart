// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem vindo(a)',
        style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: const Color.fromARGB(255 ,177, 186,0),
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: 
      Center(child: Column(children: [
        SizedBox(height: 400, width: 400, child: Image.network('https://hands.com.br/assets/images/image-14.png'),),
        Text('Bem vindo(a) à aula de desenvolvimento de aplicativos para dispositivos móveis',
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,),
        SizedBox(height: 20,),
        Text('Aqui você vai encontrar:',
        style: TextStyle(
          fontSize: 17
        ),),
        SizedBox(height: 30,),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(width: 20,),
          SizedBox(height: 30, width: 30, child: Image.network('https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/512x512/checkbox.png')),
          SizedBox(width: 20,),
          Text('Conceitos básicos da linguagem Dart',
          style: TextStyle(
            fontSize: 15
          ),),
        ],),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(width: 20,),
          SizedBox(height: 30, width: 30, child: Image.network('https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/512x512/checkbox.png')),
          SizedBox(width: 20,),
          Text('Stateless e Stateful Widgets',
          style: TextStyle(
            fontSize: 15
          ),),
        ],),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(width: 20,),
          SizedBox(height: 30, width: 30, child: Image.network('https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/512x512/checkbox.png')),
          SizedBox(width: 20,),
          Text('Exemplos práticos',
          style: TextStyle(
            fontSize: 15
          ),)
        ],)
      ]),)),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255 ,25, 58,76),
        height: 60,
        child: Center(
        child: Text('Venha estuda conosco!',
        style: TextStyle(
          fontSize: 18,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        textAlign: TextAlign.center),
      )),
    );
  }
}