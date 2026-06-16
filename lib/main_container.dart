import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Exemplo Container")),

        body: Container(
          width: 600,
          height: 3600,
          color: Colors.pink,
          child: Center(
            child: Text(
              "Olá Flutter",
              style: TextStyle(color: Colors.white, fontSize: 70),
            ),
          ),
        ),
      ),
    );
  }
}
