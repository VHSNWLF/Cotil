// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_navigation/favorito.dart';
import 'package:flutter_application_navigation/nav.dart';
import 'package:flutter_application_navigation/pessoa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: Principal(),
      routes: {
        '/': (context)=> Principal(),
        '/pessoa': (context)=> Pessoa("Bom dia"),
        '/favorito': (context)=> Favorito(["\nroi, leticia né", "\nroi, marileyne né"]),
      },
    );
  }
}