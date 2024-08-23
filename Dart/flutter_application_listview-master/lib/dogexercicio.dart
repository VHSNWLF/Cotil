import 'package:flutter/material.dart';
import 'package:flutter_application_listview/dog.dart';


class Mydog extends StatefulWidget {
  const Mydog({super.key});

  @override
  State<Mydog> createState() => _MydogState();
}

class _MydogState extends State<Mydog> {
  @override
  List<Dog> listaDog = [
    Dog("Mel","Poodle", 4,"assets/imgs/poodle.jpg"),
    Dog("Belinha","yorkshire", 1,"assets/imgs/yorkshire.jpg"),
    Dog("Nala","Golden retriver", 10, "assets/imgs/golden_retriever-p.webp"),
    Dog("Safira","Vira-lata", 4,"assets/imgs/WhatsApp Image 2024-08-16 at 09.24.42.jpeg"),
  ];


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Meus dogs", style: TextStyle(color: Colors.white),), backgroundColor: const Color.fromARGB(255, 130, 207, 207),),
    
    body: ListView.separated(
      separatorBuilder: (context, index) => Divider(thickness: 5, color: Color.fromARGB(255, 130, 207, 207),),
      itemCount: listaDog.length,
      itemBuilder: (context, index){
              return ListTile(
                title: Text(listaDog[index].nome),
                subtitle: Text(listaDog[index].raca),
                trailing: Text(listaDog[index].idade.toString() +" Ano(s)"),
                leading: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(100.0)),
                child: Image.asset(listaDog[index].foto,
                  fit: BoxFit.cover,
                  width: 50.0,
                  height: 50.0,
                ),
                )
              );
            }
          )
    );
  }
}
