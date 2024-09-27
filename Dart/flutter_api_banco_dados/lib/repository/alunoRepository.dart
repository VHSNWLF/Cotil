import 'package:flutter_api_banco_dados/model/aluno.dart';

class AlunoRepository{
  List<Aluno> _listaAl = [];
 

  AlunoRepository();


List<Aluno> get listaAl => this._listaAl;

 set listaAl(List<Aluno> value) => this._listaAl = value;
}