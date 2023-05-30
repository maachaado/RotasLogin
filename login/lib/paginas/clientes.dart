import 'package:flutter/material.dart';
import 'package:login/paginas/util.dart';

class Cliente extends StatefulWidget {
  const Cliente({super.key});

  @override
  State<Cliente> createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util().criaAppBar('CLIENTES', 20, Colors.white),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Util().iconeGrande(),
             SizedBox(
            height: 10,
            width: 10),
            Util().criaTextField2('NOME:'),
            Util().criaTextField2('EMAIL:'),
            Util().criaTextField2('SENHA:'),
          ],
        ),
      ),
    );
  }
}
