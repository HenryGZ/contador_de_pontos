import 'package:flutter/material.dart';
import 'package:contador_de_pontos/pages/mineiro.dart';

class GameName extends StatefulWidget {
  final String buttonText;

  GameName({required this.buttonText});

  @override
  _GameNameState createState() => _GameNameState();
}

class _GameNameState extends State<GameName> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovering = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MineiroScreen()),
          );
        },
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // Bordas arredondadas
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // Sombra
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: _isHovering
                  ? [Colors.blue.shade900, Colors.blue.shade500]
                  : [
                      Color.fromARGB(255, 130, 130, 130),
                      Color.fromARGB(255, 80, 80, 80)
                    ], // Gradiente
            ),
          ),
          child: Center(
            child: Text(
              widget.buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontStyle: FontStyle.italic,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
