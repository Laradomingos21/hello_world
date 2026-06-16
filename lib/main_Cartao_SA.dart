import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 230, 233),
        appBar: AppBar(title: Text("Meu cartão")),

        body: Center(
          child: Container(
            width: 350,
            height: 200,
            padding: EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "Banco SESI/SENAI",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Icon(Icons.contactless, color: Colors.white),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 24),

                    Icon(Icons.sim_card, color: Colors.amber, size: 40),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "1234 5678 9012 3456",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        letterSpacing: 2, //espaçamento das letras/numeros
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Titular", style: TextStyle(color: Colors.white)),

                        Text(
                          "Lara Vitoria Domingos",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("validade", style: TextStyle(color: Colors.white)),

                        Text("12/35", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
