import 'package:flutter/material.dart';
import 'package:login/paginas/util.dart';
import 'package:login/prod_repo.dart/prod_repo.dart';

class Lista extends StatefulWidget {
  const Lista({super.key});

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    final tabela = ProdutoRepo.tabela;
    return Scaffold(
      appBar: Util().criaAppBar('LISTA DE PRODUTOS', 20, Colors.white),
      
      body: ListView.separated(
      itemBuilder: (BuildContext context, int produto){
        return ListTile(
          leading: Image.asset(tabela[produto].imagem),
          title: Text(tabela[produto].nome),
          trailing: Text(tabela[produto].valor.toString()),
        );
      }, 
      padding: const EdgeInsets.all(10),
      separatorBuilder: (_, ___,) => const Divider(), 
      itemCount: tabela.length,));
  }
}
