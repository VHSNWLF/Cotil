// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_cadastro_list_view/modelLivro.dart';

class Livros extends StatefulWidget {
  List<ModelLivro> lista = [];
  Livros(this.lista, {super.key});

  @override
  State<Livros> createState() => _LivrosState();
}

class _LivrosState extends State<Livros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          "Livros cadastrados",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(child: Container(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("Livros:", textAlign: TextAlign.center, style: TextStyle(fontSize: 30,),),
            SizedBox(height: 30,),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.lista[index].title),
                    subtitle: Text(widget.lista[index].autor),
                    trailing: Icon(Icons.book_outlined),
                    leading: Icon(Icons.adjust_sharp),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                  thickness: 2,
                ),
                itemCount: widget.lista.length,
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            setState(() {});
                          },
                          child: Text(
                            "Voltar",
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
      ),),
    );
  }
}