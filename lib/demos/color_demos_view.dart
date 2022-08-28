/* 
Bir ekran olacak
Bu ekranda 3 button ve bunlara basınca renk değişimi olacak
Seçili olan button selected icon
*/

import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({Key? key, required this.initalColor}) : super(key: key);

  final Color? initalColor;

  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initalColor ?? Colors.transparent;
  }

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
        onTap: _colorOnTap,
        items: const [
          BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.red),
            label: "Red",
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.yellow),
            label: "yellow",
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.blue),
            label: "blue",
          ),
        ],
      ),
    );
  }

  void _colorOnTap(int value) {
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
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
