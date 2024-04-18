import 'package:flutter/material.dart';


class Myposto extends StatefulWidget {
  const Myposto({super.key});


  @override
  State<Myposto> createState() => _MypostoState();
}


class _MypostoState extends State<Myposto> {


  final postoimg = SizedBox(height: 200, width: 200, child: Image.asset("assets/images/bomba-de-gasolina.png"),);
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasosaController = TextEditingController();
  String resultado = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
       AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 180, 100, 194),
        title: Text("Álcool ou gasolina", style: TextStyle(color: Colors.white),
        ),),


      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        postoimg,
        SizedBox(height: 10,),
        TextField(
          controller: alcoolController,
          decoration: InputDecoration(labelText: "Digite o preço do litro do álcool: "),
        ),
        SizedBox(height: 10,),
        TextField(
          controller: gasosaController,
          decoration: InputDecoration(labelText: "Digite o preço do litro da gasolina: "),
        ),
        SizedBox(height: 10,),


        ElevatedButton(onPressed: () {
          calcula();
          setState(() {});
        }, child: Text("Calcular")),
        SizedBox(height: 10,),
        Text("O melhor a se usar é: " + resultado),
      ],)),
    );
  }


  void calcula(){
    double alcool = double.parse(alcoolController.text);
    double gasosa = double.parse(gasosaController.text);
    double conta = alcool/gasosa;


    if(conta < 0.7){
      resultado = "álcool!";
    }
    else{
     resultado = "gasolina!";
    }
  }
}

