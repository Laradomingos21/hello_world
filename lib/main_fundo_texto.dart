import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/capivara.png"),
              fit: BoxFit.contain,
            ),
          ),
          child: const Center(
            child: Text(
              "SENAI",
              style: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(255, 246, 171, 9),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
