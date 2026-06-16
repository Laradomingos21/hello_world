import 'package:flutter/material.dart';
//Importa o SharedPreferences
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(Idioma());
}

// - - - - - - - Classe principal do aplicativo - - - - - - -
class Idioma extends StatefulWidget {
  const Idioma({super.key});

  @override
  State<Idioma> createState() => _MyAppState();
}

// - - - - - - - Classe responsável pela lógica - - - - - - -
class _MyAppState extends State<Idioma> {
  // Variável responsável por controlar o tema
  // true  -> tema escuro
  // false -> tema claro
  // O aplicativo começa no tema claro
  bool valorIdioma = false;

  @override
  void initState() {
    super.initState();

    // Quando o aplicativo inicia, ele chama a função carregarTema(). Essa função verifica se existe um tema salvo no SharedPreferences
    carregarIdioma();
  }

  // - - - - - - - Função para salvar o tema - - - - - - -
  Future<void> salvarIdioma(bool valor) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('português', valor);
  }

  // - - - - - - - Função para carregar tema - - - - - - -
  Future<void> carregarIdioma() async {
    final prefs = await SharedPreferences.getInstance();
    bool? idiomaSalvo = prefs.getBool('português');

    setState(() {
      valorIdioma = idiomaSalvo ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove a faixa DEBUG
      debugShowCheckedModeBanner: false,

      // - - - - - - - Tela Principal - - - - - - -
      home: Scaffold(
        appBar: AppBar(title: const Text("Português e English")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              // Texto mostrando o tema atual
              Text(
                valorIdioma ? "Hello" : "Olá",

                style: const TextStyle(fontSize: 24),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // - - - - - - - Botão Portugues - - - - - - -
                  ElevatedButton(
                    onPressed: () {
                      // Atualiza a tela
                      setState(() {
                        // false = portugues
                        valorIdioma = false;
                      });

                      // Salva o portugues
                      salvarIdioma(false);
                    },
                    child: Text("Portugues"),
                  ),

                  const SizedBox(width: 10),

                  // SWITCH
                  Switch(
                    value: valorIdioma,

                    onChanged: (valor) {
                      // Atualiza a tela
                      setState(() {
                        valorIdioma = valor;
                      });

                      // Salva no SharedPreferences
                      salvarIdioma(valor);
                    },
                  ),

                  const SizedBox(width: 10),

                  // - - - - - - - Botão English - - - - - - -
                  ElevatedButton(
                    onPressed: () {
                      // Atualiza a tela
                      setState(() {
                        // true = ingles
                        valorIdioma = true;
                      });

                      // Salva o ingles
                      salvarIdioma(true);
                    },
                    child: Text("English"),
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
