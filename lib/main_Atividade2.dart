import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ContadorTela());
  }
}

class ContadorTela extends StatefulWidget {
  const ContadorTela({super.key});

  @override
  _ContadorTelaState createState() => _ContadorTelaState();
}

class _ContadorTelaState extends State<ContadorTela> {
  int contador = 0;
  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void diminuir() {
    setState(() {
      contador = contador - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, size: 100, color: Colors.red),
              Text("$contador curtidas", style: const TextStyle(fontSize: 24)),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: incrementar,
                    child: const Text("Curtir"),
                  ),
                  ElevatedButton(
                    onPressed: diminuir,
                    child: const Text("Descurtir"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
