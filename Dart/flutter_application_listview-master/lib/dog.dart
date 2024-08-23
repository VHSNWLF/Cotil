class Dog{
  String _nome = "";
  String _raca="";
  int _idade = 0;
  String _foto="";

  Dog(this._nome, this._raca, this._idade, this._foto);
  
  get nome => this._nome;

 set nome( value) => this._nome = value;

  get raca => this._raca;

 set raca( value) => this._raca = value;

  get idade => this._idade;

 set idade( value) => this._idade = value;

  get foto => this._foto;

 set foto( value) => this._foto = value;


}