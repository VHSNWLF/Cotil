// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  TextEditingController cont = TextEditingController();
  List<String> listaFilmes = [];
  String opcao = "";
  var name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Star Wars Movie's",
          style: TextStyle(color: Colors.yellowAccent, fontSize: 40),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Informe o ID que deseja buscar",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      controller: cont,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text("Pessoa"),
                            Radio(
                              value: "Pessoa",
                              groupValue: opcao,
                              onChanged: (value) {
                                opcao = value!;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text("Planeta"),
                            Radio(
                              value: "Planeta",
                              groupValue: opcao,
                              onChanged: (value) {
                                opcao = value!;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text("Nave"),
                            Radio(
                              value: "Nave",
                              groupValue: opcao,
                              onChanged: (value) {
                                opcao = value!;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {

                setState(() {});
              },
              child: Text(
                "Mostrar",
                style: TextStyle(color: Colors.yellowAccent, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.black,
                  side: BorderSide(color: Colors.black, width: 2)),
            ),
            opcao == "Pessoa" ? () {

            } : opcao == "Planeta" ?(){

            } //ERROR
          ],
        ),
      ),
    );
  }

  Future<void> fazerReqPessoa(String x) async {
    var nome;
    var altura;
    var genero;
    var corOlhos;
    var corCabelo;
    var url = Uri.parse('https://swapi.dev/api/people/${x}/');
    http.Response response;
    response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosFormatados = jsonDecode(response.body);
      nome = (dadosFormatados['name']);
      altura = (dadosFormatados['height']);
      genero = (dadosFormatados['gender']);
      corOlhos = (dadosFormatados['eye_color']);
      corCabelo = (dadosFormatados['hair_color']);
      setState(() {});
    }
  }

  Future<void> fazerReqPlaneta(String x) async {
    var nome;
    var clima;
    var terreno;
    var diametro;
    var populacao;
    var url = Uri.parse('https://swapi.dev/api/planets/${x}/');
    http.Response response;
    response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosFormatados = jsonDecode(response.body);
      nome = (dadosFormatados['name']);
      clima = (dadosFormatados['climate']);
      terreno = (dadosFormatados['terrain']);
      diametro = (dadosFormatados['diameter']);
      populacao = (dadosFormatados['population']);
      setState(() {});
    }
  }

  Future<void> fazerReqStarships(String x) async {
    var url = Uri.parse('https://swapi.dev/api/starships/${x}/');
    var nome;
    var modelo;
    var tamanho;
    var capacidade;
    var nPassageiros;
    http.Response response;
    response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosFormatados = jsonDecode(response.body);
      nome = (dadosFormatados['name']);
      modelo = (dadosFormatados['model']);
      tamanho = (dadosFormatados['lenght']);
      capacidade = (dadosFormatados['cargo_capacity']);
      nPassageiros = (dadosFormatados['passengers']);
      setState(() {});
    }
  }

}
