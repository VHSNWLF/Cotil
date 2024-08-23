// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_cadastro_list_view/livros.dart';
import 'package:flutter_cadastro_list_view/modelLivro.dart';

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  TextEditingController titleController = TextEditingController();
  TextEditingController autorController = TextEditingController();
  GlobalKey<FormState> validationKey = GlobalKey();
  List<ModelLivro> lista = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Livros(lista),));
          }, icon: Icon(Icons.book, color: Colors.white,),),
        ],
        title: Text(
          "Cadastro de livros",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Image.asset(
                    "assets/images/book-library-with-open-textbook.jpg"),
                height: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: validationKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: "Nome do livro:",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "O titulo não pode estar vazio!";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: autorController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: "Autor:",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "O Autor não pode estar vazio!";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (validationKey.currentState!.validate()) {
                              lista.add(ModelLivro(
                                  titleController.text, autorController.text));
                              limpar();
                              mostrar();
                              setState(() {});
                            }
                          },
                          child: Text(
                            "Cadastrar",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            backgroundColor: Colors.deepPurpleAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            removeAll();
                            setState(() {});
                          },
                          child: Text(
                            "Limpar",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            backgroundColor: Colors.deepPurpleAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void limpar() {
    titleController.clear();
    autorController.clear();
  }

  void mostrar() {
    print(lista);
  }

  void removeAll() {
    lista.clear();
  }
}
