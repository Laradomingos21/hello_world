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

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Caixa 1",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 80, width: 80, color: Colors.red),

                  SizedBox(height: 20, width: 20),

                  Container(height: 80, width: 80, color: Colors.green),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
