import 'package:simulado_atividade/model/PessoaModel.dart';

class Pessoarepository {

  List<PessoaModel> listaPessoas = [];

  Pessoarepository();

  List<PessoaModel> get getListaPessoas => this.listaPessoas;

 set setListaPessoas(List<PessoaModel> listaPessoas) => this.listaPessoas = listaPessoas;
}