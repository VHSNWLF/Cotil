// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {

  final fotodePerfil = SizedBox(
    height: 500,
    width: 500,
    child: Image.asset('assets/images/fotadeperfil.jpg'),
      );

  final nome = Text("Vitor H.S Nascimento", style: TextStyle(
              fontSize: 25,
              fontFamily: 'Anta',
              fontWeight: FontWeight.bold,
            ),);

  final aboutMeText = Text("[Seu Nome] é uma pessoa apaixonada por aprender e explorar novos conhecimentos. Com uma mente curiosa e inquisitiva, [ele/ela] está sempre buscando desafios intelectuais e oportunidades de crescimento pessoal. Sua determinação e perseverança o levaram a superar obstáculos e alcançar seus objetivos ao longo da vida.\n[Seu Nome] tem uma ampla gama de interesses, desde tecnologia e ciência até arte e cultura. [Ele/Ela] se destaca por sua capacidade de pensar de forma criativa e analítica, encontrando soluções inovadoras para os problemas que enfrenta. Além disso, [ele/ela] valoriza profundamente  relações interpessoais e está sempre disposto a colaborar com os outros para alcançar objetivos comuns\nCom uma abordagem proativa e uma mentalidade aberta, [Seu Nome] está constantemente em busca de novas oportunidades de aprendizado e desenvolvimento. [Ele/Ela] acredita firmemente no poder do autodesenvolvimento e no impacto positivo que pode ter na sociedade. Com uma atitude otimista e uma vontade inabalável de perseguir seus sonhos, [Seu Nome] está pronto para enfrentar qualquer desafio que o futuro possa trazer.", style: TextStyle(
          color: Colors.black,
          fontFamily: 'Anta',
          fontSize: 15,
          fontWeight: FontWeight.w500
        ),);

  AboutMe({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre mim", style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: Center(child: Column(children: [
        SizedBox(height: 30,),
         CircleAvatar(
            radius: 100.0, // define o tamanho do avatar
            backgroundColor: Colors.blue, // cor de fundo do avatar
            backgroundImage: AssetImage('assets/images/fotadeperfil.jpg'),),
            SizedBox(height: 10,),
            nome,
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [

            IconButton(
            icon: Image.asset(
              'assets/images/telefone.png', // caminho da sua imagem
              width: 30.0, // largura da imagem
              height: 30.0, // altura da imagem
            ),
            onPressed: () {
              // ação a ser executada quando o botão for pressionado
              print('IconButton Pressed');
            },
          ),
          SizedBox(width: 20,),

          IconButton(
            icon: Image.asset(
              'assets/images/aplicativo-de-caixa-de-entrada-de-correio.png', // caminho da sua imagem
              width: 30.0, // largura da imagem
              height: 30.0, // altura da imagem
            ),
            onPressed: () {
              // ação a ser executada quando o botão for pressionado
              print('IconButton Pressed');
            },
          ),
          SizedBox(width: 20,),

          IconButton(
            icon: Image.asset(
              'assets/images/balao-de-bate-papo.png', // caminho da sua imagem
              width: 30.0, // largura da imagem
              height: 30.0, // altura da imagem
            ),
            onPressed: () {
              // ação a ser executada quando o botão for pressionado
              print('IconButton Pressed');
            },
          ),
          
            ],),
      SizedBox(height: 20,),
      DecoratedBox(decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.grey.shade300
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: aboutMeText
      ),
      )
      ],)),
    ));
  }
}