// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HPbooks extends StatelessWidget {
  const HPbooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A saga de Harry Potter",
         style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
          ),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 171, 246, 248),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        height: 70,
        child: Text("Griffyndor | Slytherin | Ravenclaw | Hufflepuff", style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,),
      ),
      body: SingleChildScrollView (child:
      Center(child: Column(children: [
        Text("Harry Potter e a Pedra Filosofal", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 200, width: 200, child: Image.network('https://m.media-amazon.com/images/I/51lRMYwP-4L.jpg'),),
        SizedBox(height: 30,),

        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Sinpose:',
            style: TextStyle(
              fontSize: 20,
             fontWeight: FontWeight.bold
             ),
             textAlign: TextAlign.left,
          ),
        ),

        Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Expanded( 
      child: Text(
        '   Harry Potter é um garoto órfão que vive infeliz com seus tios, os Dursleys. Ele recebe uma carta contendo um convite para ingressar em Hogwarts, uma famosa escola especializada em formar jovens bruxos. Inicialmente, Harry é impedido de ler a carta por seu tio, mas logo recebe a visita de Hagrid, o guarda-caça de Hogwarts, que chega para levá-lo até a escola. Harry adentra um mundo mágico que jamais imaginara, vivendo diversas aventuras com seus novos amigos, Rony Weasley e Hermione Granger.',
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    SizedBox(width: 10),
    Text(
      "Só pra ter",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    SizedBox(width: 20),
  ],
),


        SizedBox(height: 20,),
        Text("Harry Potter e a Câmara Secreta", style: TextStyle(
            fontWeight: FontWeight.w500,
          )),
         SizedBox(height: 300, width: 300, child: Image.network('https://m.media-amazon.com/images/I/71NsVQ5MlwL._AC_UF1000,1000_QL80_.jpg'),),


        SizedBox(height: 20,),
        Text("Harry Potter e o Prisioneiro de Azkaban", style: TextStyle(
            fontWeight: FontWeight.w500,
          )),
         SizedBox(height: 300, width: 300, child: Image.network('https://rebootcomics.com.br/wp-content/uploads/2023/08/1692406836523.jpg'),),


        SizedBox(height: 20,),
        Text("Harry Potter e o Calice de Fogo", style: TextStyle(
            fontWeight: FontWeight.w500,
          )),
         SizedBox(height: 300, width: 300, child: Image.network('https://m.media-amazon.com/images/I/81nTLN-kz7L._AC_UF1000,1000_QL80_.jpg'),),


        SizedBox(height: 20,),
        Text("Harry Potter e a Ordem da Fênix", style: TextStyle(
            fontWeight: FontWeight.w500,
          )),
         SizedBox(height: 300, width: 300, child: Image.network('https://cdn.kobo.com/book-images/f75002e9-5ae1-4d08-aa45-e98cb49f301d/1200/1200/False/harry-potter-e-a-ordem-da-fenix.jpg'),),


        SizedBox(height: 20,),
        Text("Harry Potter e o Enigma do Principe", style: TextStyle(
            fontWeight: FontWeight.w500,
          )),
         SizedBox(height: 300, width: 300, child: Image.network('https://m.media-amazon.com/images/I/61sXBXmAWML._AC_UF1000,1000_QL80_.jpg'),),


        SizedBox(height: 20,),
        Text("Harry Potter e as Reliquias da Morte", style: TextStyle(
            fontWeight: FontWeight.w500,
          )),
         SizedBox(height: 300, width: 300, child: Image.network('https://lojaleiturinha.vtexassets.com/arquivos/ids/156210/1671658331hpreliquiasdamorte.jpg?v=638337701870870000'),),

         
      ],)),
    ));
  }
}