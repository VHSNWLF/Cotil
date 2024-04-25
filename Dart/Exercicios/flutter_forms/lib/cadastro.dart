class Pessoa{
  String nome = "";
  String email = "";
  String curso = "";
  List<String> interesses = [];
  bool receberNot = false;
  
  Pessoa.v();
  Pessoa.n(this.nome);
  Pessoa(this.nome, this.email, this.curso, this.interesses, this.receberNot);


 String get getNome => this.nome;

 set setNome(String nome) => this.nome = nome;

  get getEmail => this.email;
  
List<String> get getInteresses => this.interesses;

 set setInteresses(List<String> interesses) => this.interesses = interesses;

 set setEmail( email) => this.email = email;

  get getCurso => this.curso;

 set setCurso( curso) => this.curso = curso;

  get getReceberNot => this.receberNot;

 set setReceberNot( receberNot) => this.receberNot = receberNot;


  
}