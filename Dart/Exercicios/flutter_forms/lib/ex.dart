// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_interpolation_to_compose_strings, avoid_print, dead_code

import 'package:flutter/material.dart';
import 'package:flutter_forms/cadastro.dart';

class MyForms extends StatefulWidget {
  const MyForms({super.key});

  @override
  State<MyForms> createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {
  final imagem = SizedBox(height: 200, width: 400, child: Image.asset("assets/images/undraw_undraw_undraw_undraw_sign_up_ln1s_-1-_s4bc_-1-_ee41_(1)_3xti.png"));
  String curso = "";
  String nome = "";
  String email = "";
  bool a1 = false;
  bool a2 = false;
  bool a3 = false;
  bool permitirNot = false;
  List<String> interesse = [];
  List<Pessoa> listaPessoa = [];
  TextEditingController controladorTexto = TextEditingController();
  TextEditingController controladorTexto2 = TextEditingController();
  //Pessoa p = Pessoa.v();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário de interesse e oficinas",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),),
        backgroundColor: Colors.blue.shade300
      ),

      body: SingleChildScrollView(child: Center(child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0), // Defina o padding desejado aqui
          child: imagem,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0), // Defina o padding desejado aqui
          child:TextField(
          controller: controladorTexto,
          onChanged: (value) {
            nome = value;
            //p.setNome = value;
            setState(() {
            });
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: "Nome:",
            prefixIcon: Icon(Icons.face),
          ),
        ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0), // Defina o padding desejado aqui
          child: TextField(
          controller: controladorTexto2,
          onChanged: (value) {
            email = value;
            //p.setEmail = value;
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: "E-mail:",
            prefixIcon: Icon(Icons.face),
          ),
        ),
        ),

        Text("Tipo de Curso:", style: TextStyle(fontWeight: FontWeight.bold),),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0), // Defina o padding desejado aqui
          child:Row(mainAxisAlignment: MainAxisAlignment.start,children: [
          Text("Somente Técnico"),
          Radio(
            value: "Somente Técnico",
            groupValue: curso,
            onChanged: (value) {
              curso = value!;
              //p.setCurso = curso;
              setState(() {});              
            },
          ),

          Text("Integrado ao médio"),
          Radio(
            value: "Integrado ao médio",
            groupValue: curso,
            onChanged: (value) {
              curso = value!; 
              //p.setCurso = curso;
              setState(() {});             
            },
          ), 
          
        ],)
        ),
Divider(thickness: 1, color: Colors.black,),
        Text("Oficinas de interesse:", style: TextStyle(fontWeight: FontWeight.bold),),
       
        CheckboxListTile(
          title: Text("Escrita cientifíca"),
          value: a1,
          onChanged: (value) {
            a1 = value!;
            if (a1 == true){
              interesse.add("Escrita cientifíca");
              //p.setInteresses = interesse;
            }
            setState(() {});
          },
          ),

         CheckboxListTile(
          title: Text("Literatura Africana"),
          value: a2,
          onChanged: (value) {
            a2 = value!;
            if (a2 == true){
              interesse.add("Literatura Africana");
              //p.setInteresses = interesse;
            }

            setState(() {});
          },
          ),

          CheckboxListTile(
          title: Text("Artes"),
          value: a3,
          onChanged: (value) {
            a3 = value!;
            if (a3 == true){
              interesse.add("Artes");
              //p.setInteresses = interesse;
            }
            setState(() {});
          },
          ),
          Divider(thickness: 1, color: Colors.black,),

          SwitchListTile(
            title: Text("Permitir o envio de notificações no email"),
            value: permitirNot,
            onChanged: (value) {
              permitirNot = value;
              //p.setReceberNot = permitirNot;
              setState(() {});
            },
            ),

            Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0), // Defina o padding desejado aqui
          child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            ElevatedButton(onPressed: () {
              Pessoa p = Pessoa(nome, email, curso, interesse, permitirNot);
              listaPessoa.add(p);
              interesse = [];
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Pessoa cadastrada com sucesso!"))
              );
              limpaDados();
              /* print("Nome: "+p.getNome);
              print("Email: "+p.getEmail);
              print("Tipo de Curso: "+p.getCurso);
              for(int i=0; i<p.getInteresses.length; i++){
                print("Interesse: "+p.getInteresses[i]);
              }
              print("Receber Notificações: "+p.getReceberNot.toString()); */
            setState(() {});
          }, child: Text("Enviar", style: TextStyle(
            color: Colors.white,
          ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),),

          SizedBox(width: 30,),

            ElevatedButton(onPressed: () {
              limpaDados();
            setState(() {});
          }, child: Text("Cancelar", style: TextStyle(
            color: Colors.white,
          ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),)
          ],)
        ),

          ElevatedButton(onPressed: () {
            mostrar();
            setState(() {});
          }, child: Text("Mostrar", style: TextStyle(
            color: Colors.white,
          ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),),


      ],
      ),
      ),
      ),
    );
  }
  void mostrar(){
      listaPessoa.forEach((Pessoa p) {
        print("Nome: "+p.getNome);
        print("Email: "+p.getEmail);
        print("Tipo de Curso: "+p.getCurso);
        for(int i=0; i<p.getInteresses.length; i++){
          print("Interesse: "+p.getInteresses[i]);
        }
        print("Receber Notificações: "+p.getReceberNot.toString());
        print('-------------------------------------');
      });
      print('============================================');
    }

  void limpaDados(){
    permitirNot = false;
    a1 = false;
    a2 = false;
    a3 = false;
    curso = "";
    controladorTexto = TextEditingController();
    controladorTexto2 = TextEditingController();
  }
}
