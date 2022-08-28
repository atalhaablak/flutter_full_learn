import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: const Text("data"),
            color: Theme.of(context).errorColor,
          ),
          Container(
            child: Text(
              "data",
              style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).errorColor),
            ),
            color: ColorsItems.porsche,
          ),
        ],
      ),
    );
  }
}

class ColorsItems {
  static Color porsche = const Color(0xffEDBF61);
  static Color sulu = const Color.fromARGB(198, 237, 97, 1);
}
