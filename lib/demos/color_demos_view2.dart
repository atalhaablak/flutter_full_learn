// Bir ekran olacak
/* 3 buton olacak ve bunlara basınca background değişecek
seçili olan button selectedicon olsun  */

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key}) : super(key: key);

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.grey;

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _ColorOnTap,
        items: [
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: "RED"),
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: "YELLOW"),
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: "YELLOW"),
        ],
      ),
    );
  }

  void _ColorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 10, height: 10);
  }
}
