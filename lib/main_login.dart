import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(), // tela inicial
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: largura * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  const Icon(
                    Icons.lock,
                    size: 100,
                    color: Color.fromARGB(255, 7, 101, 114),
                  ),

                  const Text("Login", style: TextStyle(fontSize: 24)),

                  SizedBox(height: 20),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 20),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 20),

                  SizedBox(
                    height: 50,
                    width: 800,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Entrar", style: TextStyle(fontSize: 20)),
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: Text("Criar Conta", style: TextStyle(fontSize: 20)),
                  ),

                  SizedBox(height: 500),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "alterar informações",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
