// ignore_for_file: unnecessary_this

class Objetos{
  List<String> listaObjetos = ["Varinha das Varinhas","Pedra da resurreicao","Capa da invisibilidade"];
  
  Objetos(this.listaObjetos);
  Objetos.n();

 List<String> get getListaObjetos => this.listaObjetos;

 set setListaObjetos(List<String> listaObjetos) => this.listaObjetos = listaObjetos;
}