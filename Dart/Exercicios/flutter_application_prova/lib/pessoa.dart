// ignore_for_file: non_constant_identifier_names, unnecessary_this

class Pessoa{
  String nome = "";
  String CRM = "";
  List<String> formacao = [];
  bool permitirChamada = false;

  Pessoa(this.nome, this.CRM, this.formacao, this.permitirChamada);
  
 bool get getPermitirChamada => this.permitirChamada;

 set setPermitirChamada(bool permitirChamada) => this.permitirChamada = permitirChamada;
 
 String get getNome => this.nome;

 set setNome(String nome) => this.nome = nome;

  get getCRM => this.CRM;

 set setCRM( CRM) => this.CRM = CRM;

 List<String> get getFormacao => this.formacao;

 set setFormacao(List<String> formacao) => this.formacao = formacao;


}