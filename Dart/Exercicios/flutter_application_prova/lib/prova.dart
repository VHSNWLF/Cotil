// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, sort_child_properties_last, avoid_function_literals_in_foreach_calls, prefer_interpolation_to_compose_strings, avoid_print, unused_local_variable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_prova/pessoa.dart';

class Prova extends StatefulWidget {
  const Prova({super.key});

  @override
  State<Prova> createState() => _ProvaState();
}

class _ProvaState extends State<Prova> {

  TextEditingController nameController = TextEditingController();
  TextEditingController crmController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey();

  bool _residen = false;
  bool _espec = false;
  bool _posG = false;

  bool perm = false;

  List<String> formacaoA = [];
  List<Pessoa> listaPessoa = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clinica Médica H.S.", style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset("", height: 200, width: 200,),
              SizedBox(height: 10,),

//            TEXTFORMFIELD PART
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        label: Text('Nome'),
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                      validator: (value) {
                        if(nameController.text.trim() == ""){
                          return "Este campo não pode estar vazio";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: crmController,
                      decoration: InputDecoration(
                        label: Text('CRM'),
                        prefixIcon: Icon(Icons.key_rounded),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                      validator: (value) {
                        if(crmController.text.trim() == ""){
                          return "Este campo não pode estar vazio";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text("Selecione a sua formação", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20,),

//            CHECKBOX PART
              CheckboxListTile(
                title: Text("Residência"),
                value: _residen,
                onChanged: (value) {
                  _residen = value!;
                  if(_residen){
                    formacaoA.add("Residêcia");
                  }else{
                    formacaoA.remove("Residêcia");
                  }
                  setState(() {
                    
                  });
                },
              ),

              CheckboxListTile(
                title: Text("Especialização"),
                value: _espec,
                onChanged: (value) {
                  _espec = value!;
                  if(_espec){
                    formacaoA.add("Especialização");
                  }else{
                    formacaoA.remove("Especialização");
                  }
                  setState(() {
                    
                  });
                },
              ),

              CheckboxListTile(
                title: Text("Pós Graduação"),
                value: _posG,
                onChanged: (value) {
                  _posG = value!;
                  if(_posG){
                    formacaoA.add("Pós Graduação");
                  }else{
                    formacaoA.remove("Pós Graduação");
                  }
                  setState(() {
                    
                  });
                },
              ),

//            SWITCHLISTTILE PART
              SwitchListTile(
                title: Text("Permitir chamadas de emergência"),
                value: perm,
                onChanged: (value) {
                  perm = value;
                  setState(() {
                    
                  });
                },),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: () {
                      if(_formKey.currentState!.validate()){
                        Pessoa p = Pessoa(nameController.text, crmController.text, formacaoA, perm);
                        listaPessoa.add(p);
                        limpar();
                      }
                      setState(() {
                        
                      });
                    },
                    child: Text("Cadastrar", style: TextStyle(color: Colors.white, fontSize: 20),),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.deepPurpleAccent,
                      side: BorderSide(color: Colors.black,width: 2)
                    ),
                    ),
                    ElevatedButton(onPressed: () {
                      limpar();
                      setState(() {
                        
                      });
                    },
                    child: Text("Cancelar", style: TextStyle(color: Colors.white, fontSize: 20),),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.deepPurpleAccent,
                      side: BorderSide(color: Colors.black,width: 2)
                    ),
                    ),

                  ],
                ),
                ElevatedButton(onPressed: () {
                  mostrar();
                  setState(() {
                    
                  });
                },
                child: Text("Mostrar", style: TextStyle(color: Colors.white, fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.deepPurpleAccent,
                  side: BorderSide(color: Colors.black,width: 2)
                ),
                )
            ],
          ),
        ),
      ),
    );
  }
  void limpar(){
    nameController = TextEditingController();
    crmController = TextEditingController();
    _residen = false;
    _espec = false;
    _posG = false;
    perm = false;
    formacaoA = [];
  }

  void mostrar(){
    listaPessoa.forEach((Pessoa p) {
      print("Nome: "+p.getNome);
      print("CRM: "+p.getCRM);
      for(int i=0; i<p.getFormacao.length; i++){
        print("Formação: "+p.getFormacao[i]);
      }
      print("Permitir chamadas de Emergencia: "+p.getPermitirChamada.toString());
      print("---------------------------------");
    });
  }
}