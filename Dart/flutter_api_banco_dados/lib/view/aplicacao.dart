// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_api_banco_dados/model/aluno.dart';
import 'package:flutter_api_banco_dados/repository/alunoRepository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Aplicacao extends StatefulWidget {
  const Aplicacao({super.key});

  @override
  State<Aplicacao> createState() => _AplicacaoState();
}

class _AplicacaoState extends State<Aplicacao> {
  Aluno al = Aluno();
  AlunoRepository alRepo = AlunoRepository();

  Future<void> fazerRequisicao() async {
    var url = Uri.parse("http://localhost:8080/apiAluno/todos");
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      List listaAluno = jsonDecode(response.body) as List;
      alRepo.listaAl =
          listaAluno.map((listaAluno) => Aluno.fromJson(listaAluno)).toList();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    fazerRequisicao();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "API com Banco de Dados",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 5,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(alRepo.listaAl[index].nome.toString()),
                      subtitle: Text("Ra:"+alRepo.listaAl[index].ra.toString()),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.deepPurpleAccent,
                      ),
                  itemCount: alRepo.listaAl.length),
                  Divider(
                        color: Colors.deepPurpleAccent,
                      ),
            ],
            
          ),
        ),
      ),
    );
  }
}
