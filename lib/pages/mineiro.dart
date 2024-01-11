import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MineiroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                SvgPicture.asset('lib/assets/icons/Seta esquerda.svg'),
                Padding(padding: EdgeInsets.only(left: 200)),
                SvgPicture.asset('lib/assets/icons/Seta direita.svg'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                Text(
                  'ELES',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
