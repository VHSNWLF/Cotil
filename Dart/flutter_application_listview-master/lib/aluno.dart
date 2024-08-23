// ignore_for_file: unnecessary_this

class Aluno{
  String _nome = "";
  int _ra = 0;

 Aluno(this._nome, this._ra);
 
 String get nome => this._nome;

 set nome(String value) => this._nome = value;

  get ra => this._ra;

 set ra( value) => this._ra = value;
}