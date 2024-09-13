// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, prefer_typing_uninitialized_variables, unused_local_variable, unnecessary_brace_in_string_interps, unused_import

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
  String atb1 = "";
  String atb2 = "";
  String atb3 = "";
  String atb4 = "";
  String atb5 = "";

  var nome;
  var altura;
  var genero;
  var corOlhos;
  var corCabelo;

  var clima;
  var terreno;
  var diametro;
  var populacao;

  var modelo;
  var tamanho;
  var capacidade;
  var nPassageiros;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Star Wars Movie's",
          style: TextStyle(color: Colors.yellowAccent, fontSize: 40, fontFamily: 'StarWars'),
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (opcao == "Pessoa") {
                  fazerReqPessoa(cont.text);
                  atb1 = "Nome: " + nome.toString();
                  atb2 = "Altura: " + altura.toString();
                  atb3 = "Genero: " + genero.toString();
                  atb4 = "Cor do Cabelo: " + corCabelo.toString();
                  atb5 = "Cor dos Olhos: " + corOlhos.toString();
                } else if (opcao == "Planeta") {
                  fazerReqPlaneta(cont.text);
                  atb1 = "Nome: " + nome.toString();
                  atb2 = "Clima: " + clima.toString();
                  atb3 = "Terreno: " + terreno.toString();
                  atb4 = "Diametro: " + diametro.toString();
                  atb5 = "População: " + populacao.toString();
                } else if (opcao == "Nave") {
                  fazerReqStarships(cont.text);
                  atb1 = "Nome: " + nome.toString();
                  atb2 = "Modelo: " + modelo.toString();
                  atb3 = "Tamanho: " + tamanho.toString();
                  atb4 = "Capacidade: " + capacidade.toString();
                  atb5 = "Número de Passageiros: " + nPassageiros.toString();
                } else{
                  atb1 = 'Selecione uma opção [Pessoa/Planeta/Nave]';
                }
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
            SizedBox(
              height: 20,
            ),
            Text(atb1),
            Text(atb2),
            Text(atb3),
            Text(atb4),
            Text(atb5),
          ],
        ),
      ),
    );
  }

  Future<void> fazerReqPessoa(String x) async {
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
