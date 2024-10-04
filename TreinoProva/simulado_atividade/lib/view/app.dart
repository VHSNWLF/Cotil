// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:simulado_atividade/model/PessoaModel.dart';
import 'package:simulado_atividade/repository/PessoaRepository.dart';

class StartApp extends StatefulWidget {
  const StartApp({super.key});

  @override
  State<StartApp> createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();


  PessoaModel pessoa = PessoaModel();
  Pessoarepository pessoaRepo = Pessoarepository();

  Future<void> cadastrarPessoa(String nome, String email, String senha) async {
    var url = Uri.parse("http://192.168.3.115:8080/Pessoa/save/${nome}/${email}/${senha}");
    http.Response response = await http.post(url);
    if(response.statusCode == 200){
      print("sucesso");
    }
  }

  Future<void> listarPessoas2 () async{
    
    var url = Uri.parse("http://192.168.3.115:8080/Pessoa");
    http.Response response = await http.get(url);

    if(response.statusCode == 200){
      List dadosApi = jsonDecode(response.body) as List;
      pessoaRepo.listaPessoas = dadosApi.map((dadosApi) => PessoaModel.fromJson(dadosApi)).toList();
      setState(() {});
    }

  }

  Future<void> listarPessoas () async{
    var url = Uri.parse("http://192.168.3.115:8080/Pessoa");
    //Pegando os dados em formato JSON
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      //Atribuindo os dados JSON em um objeto do tipo Map
      //Map<String, dynamic> dadosApi = jsonDecode(response.body);
      //Fazendo uma lista de objetos
      List dadosApi = jsonDecode(response.body) as List;
      //transformando os dados JSON em um objeto bonitinho
      //pessoa = PessoaModel.fromJson(dadosApi);
      pessoaRepo.listaPessoas = dadosApi.map((dadosApi) => PessoaModel.fromJson(dadosApi)).toList();
     
     //TESTE
      pessoaRepo.listaPessoas.forEach((element) {
        print(element.nome);
      },);
    //FIM TESTE

      setState(() {});
    }else{
      print("erro api call");
      setState(() {
        
      });
    }
    setState(() {
      
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Simulado",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Cadastro de Pessoa", style: TextStyle(fontSize: 40),),
              SizedBox(height: 30,),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: nomeController,
                      decoration: InputDecoration(
                        labelText: "Nome",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.deepPurpleAccent),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.deepPurpleAccent),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: senhaController,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.deepPurpleAccent),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => cadastrarPessoa(nomeController.text, emailController.text, senhaController.text),
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => listarPessoas(),
                    child: Text(
                      "Mostrar",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                    ),
                  ),
                ],
              ),
              ListView.separated(itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Nome: "+pessoaRepo.listaPessoas[index].nome.toString()),
                  subtitle: Text("Email: "+pessoaRepo.listaPessoas[index].email.toString()),
                  leading: Text("Senha: " + pessoaRepo.listaPessoas[index].senha.toString()),
                );
              }, separatorBuilder: (context, index) => Divider(thickness: 2,), itemCount: pessoaRepo.listaPessoas.length, shrinkWrap: true,),
            ],
          ),
        ),
      ),
    );
  }

  void limpar(){
    nomeController.clear();
    emailController.clear();
    senhaController.clear();
    setState(() {
    });
  }
}
