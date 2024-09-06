// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyRequisicao extends StatefulWidget {
  const MyRequisicao({super.key});

  @override
  State<MyRequisicao> createState() => _MyRequisicaoState();
}

class _MyRequisicaoState extends State<MyRequisicao> {
  var userID;
  var taskID;
  var title;
  var completed;
  TextEditingController cont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exemplo Requisição API",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Id da tarefa",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)
                            )
                          ),
                          controller: cont,
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  fazerReq(cont.text);
                },
                child: Text("Fazer Requisição"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("ID do usuário: " + userID.toString()),
              Text("ID da tarefa: " + taskID.toString()),
              Text("Titulo da tarefa: " + title.toString()),
              Text("Completa? " + completed.toString()),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> fazerReq(String x) async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos/${x}");
    http.Response response;
    response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosFormatados = jsonDecode(response.body);
      userID = (dadosFormatados['userId']);
      taskID = (dadosFormatados['id']);
      title = (dadosFormatados['title']);
      completed = (dadosFormatados['completed']);

      setState(() {});
    }
  }
}
