import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          Card(
            //elevation ile gölgesini ayarlayabilirsin
            margin: ProjectMargins.cardMargin,
            // padding dışarıyla aradaki boşluğu ayarlar.
            shape: StadiumBorder(),
            child: SizedBox(
              height: 100,
              width: 500,
              child: Center(
                child: Text("Ali"),
              ),
            ),
          ),
          Card(
            //elevation ile gölgesini ayarlayabilirsin
            margin: ProjectMargins.cardMargin,
            // padding dışarıyla aradaki boşluğu ayarlar.
            shape: StadiumBorder(),
            child: SizedBox(
              height: 100,
              width: 500,
              child: Center(
                child: Text("Ali"),
              ),
            ),
          ),
          _CustomCard(
              child: SizedBox(
            height: 100,
            width: 500,
            child: Center(child: Text("Ali")),
          )),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

// Borders:
//  -circle burder
//  -raundedrectanglebourder
//  -stadiumborder

class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      child: child,
    );
  }
}
