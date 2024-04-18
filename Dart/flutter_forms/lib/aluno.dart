// ignore_for_file: unnecessary_this

class Aluno 
{
  int ra = 0;
  String _nome = "";

Aluno(this.ra, this._nome);
  
 int get getRa => this.ra;

 set setRa(int ra) => this.ra = ra;

  get nome => this._nome;

 set nome( value) => this._nome = value;
}