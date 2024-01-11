import 'package:flutter/material.dart'; //importa o material.dart
import 'package:contador_de_pontos/assets/widgets/menu/game_name.dart';

void main() {
  runApp(const FigmaToCodeApp()); //chama a classe FigmaToCodeApp
}

class FigmaToCodeApp extends StatelessWidget {
  ///essa classe é o menu inicial
  const FigmaToCodeApp({super.key});

  @override //sobrescreve o método build
  Widget build(BuildContext context) {
    //context é o contexto da aplicação
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          MenuInicial(), //chama a classe MenuInicial
        ]),
      ),
    );
  }
}

class MenuInicial extends StatelessWidget {
  const MenuInicial({super.key});

  //classe MenuInicial
  @override
  Widget build(BuildContext context) {
    return const MenuInicialStateful();
  }
}

class MenuInicialStateful extends StatefulWidget {
  const MenuInicialStateful({super.key});

  //classe MenuInicialStateful
  @override
  // ignore: library_private_types_in_public_api
  _MenuInicialState createState() => _MenuInicialState();
}

class _MenuInicialState extends State<MenuInicialStateful> {
//classe _MenuInicialState
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 50)),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CONTADOR DE PONTOS',
              textAlign: TextAlign.center,
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontStyle: FontStyle.italic,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w900,
                height: 1.2,
                letterSpacing: 2.0, // Espaçamento entre as letras
                wordSpacing: 5.0, // Espaçamento entre as palavras
                shadows: [
                  // Sombra do texto
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(200, 172, 172, 172),
                  ),
                ], // Cor de fundo do texto
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 30)),
            GameName(
              buttonText: 'TRUCO MINEIRO',
            ),
            const Padding(padding: EdgeInsets.only(bottom: 5)),
            GameName(buttonText: 'TRUCO PAULISTA'),
            const Padding(padding: EdgeInsets.only(bottom: 5)),
            GameName(buttonText: 'PONTINHO')
          ],
        ),
      ],
    );
  }
}
