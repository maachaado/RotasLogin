import 'package:flutter/material.dart';
import 'package:login/paginas/clientes.dart';
import 'package:login/paginas/util.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
   
    trocarProduto() {
      Navigator.of(context).pushNamed('/prod');
      print('chegou');
    }

    trocarCliente() {
      Navigator.of(context).pushNamed('/cli');
      print('chegou');
    }

    return Scaffold(
      appBar: Util().criaAppBar('CADASTROS', 20, Colors.white),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Util().iconeGrande(),
            Util().criaBotao('ADICIONAR CLIENTE', trocarCliente, 45, 220),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 80,
              height: 80,
            ),
            Util().iconeGrande2(),
            Util().criaBotao('ADICIONAR PRODUTO', trocarProduto, 45, 250),
          ],
        ),
      ),
    );
  }
}
