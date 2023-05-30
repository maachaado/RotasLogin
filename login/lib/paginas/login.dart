import 'package:flutter/material.dart';
import 'package:login/paginas/util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    fazLogin() {
      if (txtEmail.text == 'joao' && txtSenha.text == '123') {
        Navigator.of(context).pushNamed('/home');
        // ignore: avoid_print
        print('SIM ${txtEmail.text} - ${txtSenha.text}');
      } else {
        Navigator.of(context).pushNamed('/lista');
        // ignore: avoid_print
        print('NÃO ${txtEmail.text} - ${txtSenha.text}');
      }
    }

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Util().criaTextField(
                'Email', false, TextInputType.emailAddress, txtEmail),
            Util().criaTextField('Senha', true, TextInputType.none, txtSenha),
            const SizedBox(height: 30),
            Util().criaBotao('Entrar', fazLogin, 50, 450)
          ],
        ),
      ),
    );
  }
}
