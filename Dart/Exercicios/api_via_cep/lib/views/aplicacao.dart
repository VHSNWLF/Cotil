// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:api_via_cep/models/cep_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Aplicacao extends StatefulWidget {
  const Aplicacao({super.key});

  @override
  State<Aplicacao> createState() => _AplicacaoState();
}

class _AplicacaoState extends State<Aplicacao> {

  TextEditingController cont = TextEditingController();
  Cep_Model dadosCep = Cep_Model();

  String atb1 = "";
  String atb2 = "";
  String atb3 = "";
  String atb4 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "API ViaCep",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: cont,
                        decoration: InputDecoration(
                          label: Text("Insira um CEP válido"),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurpleAccent),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
              onPressed: () {
                fazerReq(cont.text);
                setState(() {});
              },
              child: Text(
                "Mostrar",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.deepPurpleAccent,
                  side: BorderSide(color: Colors.black, width: 2)),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(atb1, style: TextStyle(fontWeight: FontWeight.bold),),
                Text(dadosCep.cep.toString()),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(atb2, style: TextStyle(fontWeight: FontWeight.bold),),
                Text(dadosCep.logradouro.toString()),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(atb3, style: TextStyle(fontWeight: FontWeight.bold),),
                Text(dadosCep.estado.toString()),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(atb4, style: TextStyle(fontWeight: FontWeight.bold),),
                Text(dadosCep.bairro.toString()),
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> fazerReq (String cep) async {
    var url = Uri.parse("https://viacep.com.br/ws/${cep}/json/");
    http.Response response;
    response = await http.get(url);
    if (response.statusCode == 200){
      Map<String, dynamic> dadosJson = jsonDecode(response.body);
      dadosCep = Cep_Model.fromJson(dadosJson);
      atb1 = "CEP: ";
      atb2 = "Logradouro: ";
      atb3 = "Estado: ";
      atb4 = "Bairro: ";
    }
  }
}
