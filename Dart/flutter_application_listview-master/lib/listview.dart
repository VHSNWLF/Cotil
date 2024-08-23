// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_listview/aluno.dart';

class MyApp22 extends StatefulWidget {
  const MyApp22({super.key});

  @override
  State<MyApp22> createState() => _MyApp22State();
}

class _MyApp22State extends State<MyApp22> {
  List<Aluno> listaAL = [
    Aluno("Biabonita", 202228),
    Aluno("Helo", 202234),
    Aluno("Virtus", 202247),
    Aluno("Benzo", 202202)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("ListView", style: TextStyle(color:(Colors.white))  ,), backgroundColor: const Color.fromARGB(255, 224, 135, 165),),
      body: Center(child: Column(children: [
      ListView.separated(
        shrinkWrap: true,
            separatorBuilder: (context, index) => Divider(thickness: 3),
            itemCount: listaAL.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(listaAL[index].nome),
                subtitle: Text(listaAL[index].ra.toString()),
                trailing: Text(index.toString()),
                leading: CircleAvatar(child: Text(listaAL[index].nome[0]),),
              );
            },
          ),
          ElevatedButton(onPressed: () {
            
          }, child: Text("Voltar"))
      ],
      ),
      )
      
       

   /*        ListTile(
            leading: Icon(Icons.map),
            title: Text("Mapa"),
            subtitle: Text("Localização atual"),
            trailing: Icon(Icons.delete),
          ),
          ListTile(
            leading: Icon(Icons.add_rounded),
            title: Text("Mobile"),
            subtitle: Text("Disciplina de ds"),
            trailing: Icon(Icons.delete),
          ),*/
    );
  }
}