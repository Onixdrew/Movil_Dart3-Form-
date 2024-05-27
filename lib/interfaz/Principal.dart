import 'package:flutter/material.dart';
import 'package:flutter_application_4/interfaz/homePrincipal.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicación de usuario",
      home: HomePrincipal(),

    );
  }
}
