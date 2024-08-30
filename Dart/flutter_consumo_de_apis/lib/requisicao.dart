// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyRequisicao extends StatefulWidget {
  const MyRequisicao({super.key});

  @override
  State<MyRequisicao> createState() => _MyRequisicaoState();
}

class _MyRequisicaoState extends State<MyRequisicao> {
  String dadosAPI = "teste";
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
              Text(dadosAPI),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
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
                  child: Text("Fazer Requisição"))
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
    dadosAPI = response.body;
    setState(() {});
  }
}
