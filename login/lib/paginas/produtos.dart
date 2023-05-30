import 'package:flutter/material.dart';
import 'package:login/paginas/util.dart';

class Produto extends StatefulWidget {
  const Produto({super.key});

  @override
  State<Produto> createState() => _ProdutoState();
}

class _ProdutoState extends State<Produto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util().criaAppBar('CADASTRO DE PRODUTOS', 20, Colors.white),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Util().iconeGrande2(),
            SizedBox(
            height: 10,
            width: 10),
            Util().criaTextField2('NOME:'),
            Util().criaTextField2('VALOR:'),
            Util().criaTextField2('DESCRIÇÃO:'),
            Util().criaTextField2('ANEXAR IMAGEM:'),
          ],
        ),
      ),
    );
  }
}
