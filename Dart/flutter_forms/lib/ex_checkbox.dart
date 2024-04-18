// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool biscoitoSelecionado = false;
  bool bolachaSelecionada = false;
  bool melselecionada = false;
  bool pretinhaSelecionada = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,title: Text("Check box",style:TextStyle(color: Colors.white),),),
      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        Text("Biscoito ou bolacha"),

        Text("Biscoito"),
        Checkbox(
          value: biscoitoSelecionado, 
          onChanged: (value) {
            biscoitoSelecionado = value!;
            setState(() {
              
            });
          }),

          Text("Bolacha"),
          Checkbox(value: bolachaSelecionada, 
          onChanged: (value){
            bolachaSelecionada = value!;
            setState(() {
              
            });
          }),
          SizedBox(height: 20,),
            Text("Meu gatinho preferido"),
            CheckboxListTile(
              title: Text("/ᐠ - ˕ -マMel"),
              subtitle: Text("Meladão"),
              value: melselecionada, onChanged: (value) {
                melselecionada = value!;
              setState(() {
                
              });
            },
            ),
              CheckboxListTile(
              title: Text("ฅ^•ﻌ•^ฅPretinha"),
              subtitle: Text("Safadinha"),
              value: pretinhaSelecionada, onChanged: (value) {
                pretinhaSelecionada = value!;
              setState(() {
                
              });
            },
            ),

          ElevatedButton(onPressed: (){
            print(biscoitoSelecionado.toString()+""+bolachaSelecionada.toString());
          }, child: Text("ok"))
      ],
      ),
      ),
    );
  }
}