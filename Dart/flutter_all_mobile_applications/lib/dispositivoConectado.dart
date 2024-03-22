// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ConnectedDevice extends StatefulWidget {
  const ConnectedDevice({super.key});

  @override
  State<ConnectedDevice> createState() => _ConnectedDeviceState();
}

class _ConnectedDeviceState extends State<ConnectedDevice> {
  final conjunto1 = Text("GoPro 1855\nCD: 4E:9E:C2 - DISPOSITIVO 1");
  final conjunto2 = Text("GoPro 1856\nCD: 4E:9E:C2 - DISPOSITIVO 2");
  final conjunto3 = Text("GoPro 1857\nCD: 4E:9E:C2 - DISPOSITIVO 3");
  Text dispAtual = Text("");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter BLE"),
        backgroundColor: Colors.blue.shade400,
      ),

      body: Center(child: Column(children: [

          SizedBox(height: 20,),

        Text("Avaliable Devices", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          ),),

          SizedBox(height: 20,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          conjunto1,
          ElevatedButton(onPressed: () {
            dispAtual = conjunto1;
            setState(() {
              
            });
          }, child: Text("Connect", style: TextStyle(
            color: Colors.white,
          ),),style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
  ),)
        ],),

        SizedBox(height: 20,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          conjunto2,
          ElevatedButton(onPressed: () {
            dispAtual = conjunto2;
            setState(() {
              
            });
          }, child: Text("Connect", style: TextStyle(
            color: Colors.white,
          ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
  ),)
        ],),

        SizedBox(height: 20,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          conjunto3,
          ElevatedButton(onPressed: () {
            dispAtual = conjunto3;
            setState(() {
              
            });
          }, child: Text("Connect", style: TextStyle(
            color: Colors.white,
          ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
  ),)
        ],),

        SizedBox(height: 20,),

        dispAtual,
      ],)),
    );
  }
}