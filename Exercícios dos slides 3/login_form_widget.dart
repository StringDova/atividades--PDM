import 'package:flutter_application_login/model/login.dart';
import 'package:flutter_application_login/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final Login login = Login();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "E-mail",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Senha",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: GestureDetector(
            onTap: () {ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Função ainda não disponivel"), backgroundColor: Colors.red),
              );},
            child: Text("Forgot Password",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
          ),
        ),
        SizedBox(
          width: 100,
          height: 50,
          child: FloatingActionButton(
            onPressed: () {
              login.setEmail = emailController.text;
              login.setPassword = passwordController.text;

              String mensagem = "Falha no login. E-mail ou senha incorretos.";

              if (login.email == "" || login.password == "") {
                mensagem = "Falha no login. Um ou mais campos estão vazios.";
              }

              if (login.verificarLogin()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
                return;
              }

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(mensagem), backgroundColor: Colors.red),
              );
            },
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Login", style: TextStyle(color: Colors.white)),
          ),
        ),
        
      ],
    );
  }
}