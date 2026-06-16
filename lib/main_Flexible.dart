import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo do Flexible',
      home: Scaffold(
        appBar: AppBar(title: Text("Flexible")),
        body: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 120,
                color: const Color.fromARGB(255, 136, 7, 50),
                child: const Center(child: Text("1 parte")),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                height: 120,
                color: Colors.cyan,
                child: const Center(
                  child: Text(
                    "2 partes",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
