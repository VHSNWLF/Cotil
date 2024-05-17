// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_projeto_com_navigation/livroIndividual.dart';

class Livros extends StatefulWidget {
  const Livros({super.key});

  @override
  State<Livros> createState() => _LivrosState();
}

class _LivrosState extends State<Livros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Livros", style: TextStyle(
          color: Colors.white,
          fontFamily: "HARRYP__",
          fontSize: 50,
        ),),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bckgrndBlack.jpg"),
            fit: BoxFit.cover
          )
        ),

        child: Column(children: [
          SizedBox(height: 20,),

          Text("Livros|Filmes Ordem Cronologica", style: TextStyle(
          color: Colors.white,
          fontFamily: "HARRYP__",
          fontSize: 30,
        ),textAlign: TextAlign.center,),

          SizedBox(height: 20,),

          MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("1° L/F: ", style: TextStyle(
                        color: Colors.redAccent,
                        fontFamily: "HARRYP__",
                        fontSize: 25,
                      ),textAlign: TextAlign.center,),
                      Text("Harry Potter e a Pedra Filosofal", style: TextStyle(
                        color: Colors.white,
                        fontFamily: "HARRYP__",
                        fontSize: 25,
                      ),textAlign: TextAlign.center,),
                    ],),
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LivroIndiv('Harry Potter e a Pedra Filosofal', 'Harry Potter é um garoto órfão que vive infeliz com seus tios, os Dursleys. Ele recebe uma carta contendo um convite para ingressar em Hogwarts, uma famosa escola especializada em formar jovens bruxos. Inicialmente, Harry é impedido de ler a carta por seu tio, mas logo recebe a visita de Hagrid, o guarda-caça de Hogwarts, que chega para levá-lo até a escola. Harry adentra um mundo mágico que jamais imaginara, vivendo diversas aventuras com seus novos amigos, Rony Weasley e Hermione Granger.', "assets/images/Capa1.jpg"),)
                      );
                    },
                  ),
                ),
            SizedBox(height: 20,),

          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child:Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("2° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
            Text("Harry Potter e a Câmara Secreta", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
          ],),
              onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LivroIndiv('Harry Potter e a Câmara Secreta', 'Após as sofríveis férias na casa dos tios, Harry Potter se prepara para voltar a Hogwarts e começar seu segundo ano na escola de bruxos. Na véspera do início das aulas, a estranha criatura Dobby aparece em seu quarto e o avisa de que voltar é um erro e que algo muito ruim pode acontecer se Harry insistir em continuar os estudos de bruxaria. O garoto, no entanto, está disposto a correr o risco e se livrar do lar problemático.', "assets/images/Capa2.jpg"),)
                      );
                    },
            ),
          ),
            SizedBox(height: 20,),

          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child:Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("3° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
            Text("Harry Potter e o Prisioneiro de Azkaban", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
          ],),
              onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LivroIndiv('Harry Potter e o Prisioneiro de Azkaban', 'É o início do terceiro ano na escola de bruxaria Hogwarts. Harry, Ron e Hermione têm muito o que aprender. Mas uma ameaça ronda a escola e ela se chama Sirius Black. Após doze anos encarcerado na prisão de Azkaban, ele consegue escapar e volta para vingar seu mestre, Lord Voldemort. Para piorar, os Dementores, guardas supostamente enviados para proteger Hogwarts e seguir os passos de Black, parecem ser ameaças ainda mais perigosas.', "assets/images/Capa3.jpg"),)
                      );
                    },
            ),
          ),
            SizedBox(height: 20,),

            MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child:Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("4° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
            Text("Harry Potter e o Cálice de Fogo", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
          ],),
              onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LivroIndiv('Harry Potter e o Cálice de Fogo', 'Harry retorna para seu quarto ano na Escola de Magia e Bruxaria de Hogwarts, junto com os seus amigos Ron e Hermione. Desta vez, acontece um torneio entre as três maiores escola de magia, com um participante selecionado de cada escola, pelo Cálice de Fogo. O nome de Harry aparece, mesmo não tendo se inscrito, e ele precisa competir.', "assets/images/Capa4.jpg"),)
                      );
                    },
            ),
          ),
            SizedBox(height: 20,),

            MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child:Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("5° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
            Text("Harry Potter e a Ordem da Fênix", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
          ],),
              onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LivroIndiv('Harry Potter e a Ordem da Fênix', 'Após um verão desastroso, Harry volta para o seu quinto ano em Hogwarts, um dos mais difíceis que terá de encarar. Pouquíssimos alunos e pais acreditam nele ou em Dumbledore sobre a volta de Voldemort, e uma série interminável de artigos circula dizendo que eles estão completamente malucos. Ainda por cima, Dolores Umbridge, a nova professora de Defesa Contra as Artes das Trevas, prova ser a pessoa mais repugnante que Harry já conheceu.', "assets/images/Capa5.jpg"),)
                      );
                    },
            ),
          ),
            SizedBox(height: 20,),

            MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child:Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("6° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
            Text("Harry Potter e o Enigma do Príncipe", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
          ],),
              onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LivroIndiv('Harry Potter e o Enigma do Príncipe', 'No sexto ano de Harry em Hogwarts, Lord Voldemort e seus Comensais da Morte estão criando o terror nos mundos bruxo e trouxa. Dumbledore convence seu velho amigo Horácio Slughorn para retornar a Hogwarts como professor de poções após Harry encontrar um estranho livro escolar. Draco Malfoy se esforça para realizar uma ação destinada por Voldemort, enquanto Dumbledore e Harry secretamente trabalham juntos a fim de descobrir o método para destruir o Lorde das Trevas uma vez por todas.', "assets/images/Capa6.jpg"),)
                      );
                    },
            ),
          ),
            SizedBox(height: 20,),

            MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child:Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("7° L/F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
            Text("Harry Potter e as Relíquias da Morte", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
          ],), 
              onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LivroIndiv('Harry Potter e as Relíquias da Morte', 'Sem a proteção de seus professores, Harry, Rony e Hermione começam uma missão para destruir as horcruxes, que são fontes da imortalidade de Voldemort. Mais do que nunca, eles dependem uns dos outros, mas forças obscuras ameaçam separá-los.', "assets/images/Capa7.jpg"),)
                      );
                    },
            ),
          ),
            SizedBox(height: 20,),

            MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child:Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("8° F: ", style: TextStyle(
              color: Colors.redAccent,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
            Text("Harry Potter e as Relíquias da Morte II", style: TextStyle(
              color: Colors.white,
              fontFamily: "HARRYP__",
              fontSize: 25,
            ),textAlign: TextAlign.center,),
          ],),
              onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LivroIndiv('Harry Potter e as Relíquias da Morte II', 'Sem a proteção de seus professores, Harry, Rony e Hermione começam uma missão para destruir as horcruxes, que são fontes da imortalidade de Voldemort. Mais do que nunca, eles dependem uns dos outros, mas forças obscuras ameaçam separá-los.',"assets/images/Capa7.jpg"),)
                      );
                    },
            ),
          ),
          
          
            SizedBox(height: 20,),

            ElevatedButton(onPressed: () {
          Navigator.pop(context);
        },
         child: Text("Voltar", style: TextStyle(color: Colors.white),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.white)
            )
          ),
        )
        ])
        )
    );
  }
}