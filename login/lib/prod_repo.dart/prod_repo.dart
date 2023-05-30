import 'package:login/models/lisclas.dart';

class ProdutoRepo {
    static List<Prod> tabela = [
      Prod(nome: 'Mouse Gamer', 
      valor: 199.90, 
      imagem: 'images/mouse.png', 
      descricao: 'Mouse de alto desempenho...'
      ),

       Prod(nome: 'Mousepad Gamer',  
      valor: 89.90, 
      imagem: 'images/mousepad.png',
      descricao: 'Mousepad de alto desempenho...'
      ),
       
       Prod(nome: 'Teclado Gamer', 
      valor: 299.90, 
      imagem: 'images/teclado.png', 
      descricao: 'Teclado de alto desempenho...'
      ),
       
       Prod(nome: 'Fone Gamer', 
      valor: 159.90, 
      imagem: 'images/fone.png', 
      descricao: 'Fone de alto desempenho...'
      ),

    ];
}