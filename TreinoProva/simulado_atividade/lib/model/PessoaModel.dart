class PessoaModel {
  int id = 0;
  String nome = "";
  String email = "";
  String senha = "";

  PessoaModel();
  PessoaModel.full(this.nome, this.email, this.senha);
  PessoaModel.fromJson(Map<String, dynamic> json)
    :
      id = json["id"],
      nome =  json["nome"],
      email = json["email"],
      senha = json["senha"]
    ;

  int get getId => this.id;

 set setId(int id) => this.id = id;

 String get getNome => this.nome;

 set setNome(String nome) => this.nome = nome;

  get getEmail => this.email;

 set setEmail( email) => this.email = email;

  get getSenha => this.senha;

 set setSenha( senha) => this.senha = senha;


}