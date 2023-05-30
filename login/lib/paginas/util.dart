import 'dart:js';

import 'package:flutter/material.dart';
import 'package:login/paginas/clientes.dart';
import 'package:login/paginas/produtos.dart';


class Util {
  criaAppBar(titulo, tamanho, cor) {
    return AppBar(
      title: criaTexto(titulo, tamanho, cor),
      centerTitle: true,
    );
  }

  criaTexto(conteudo, tamanho, cor) {
    return Text(
      conteudo,
      style: TextStyle(
        fontSize: tamanho,
        color: cor,
      ),
    );
  }

  criaTextField(titulo, senha, tipoTeclado, controlador) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: TextField(
        controller: controlador,
        keyboardType: tipoTeclado,
        obscureText: senha,
        decoration: InputDecoration(
          labelText: titulo,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  criaBotao(rotulo, funcao, altura, largura) {
    return SizedBox(
      height: altura,
      width: largura,
      child: ElevatedButton(
        onPressed: funcao,
        child: criaTexto(rotulo, 20, Colors.white),
      ),
    );
  }

  criaTextField2(titulo) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: TextField(
        decoration: InputDecoration(
          labelText: titulo,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
  
  iconeGrande() {
    return const Icon(
      Icons.person_add_alt_1_outlined,
      size: 200,
      
    );
  }
  iconeGrande2() {
    return const Icon(
      Icons.add_box_outlined,
      size: 200,
    );
  }
}
