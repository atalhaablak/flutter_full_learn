import 'package:flutter/material.dart';

import 'color_demos_view.dart';

class ColorLifeSycleView extends StatefulWidget {
  const ColorLifeSycleView({Key? key}) : super(key: key);

  @override
  State<ColorLifeSycleView> createState() => _ColorLifeSycleViewState();
}

class _ColorLifeSycleViewState extends State<ColorLifeSycleView> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _backgroundColor = Colors.pink;
                });
              },
              icon: Icon(Icons.clear))
        ],
      ),
      body: Column(children: [
        Spacer(),
        Expanded(
            child: ColorDemosView(
          initalColor: _backgroundColor,
        )),
      ]),
    );
  }
}
