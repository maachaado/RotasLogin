import 'package:flutter/material.dart';
import 'package:login/paginas/clientes.dart';
import 'package:login/paginas/home.dart';
import 'package:login/paginas/lista.dart';
import 'package:login/paginas/login.dart';
import 'package:login/paginas/produtos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const Home(),
        '/prod': (context) => const Produto(),
        '/lista': (context) => const Lista(),
        '/cli': (context) => const Cliente(),
      },
    );
  }
}
