import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/padding_learn.dart';

import '../core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final _cardHeight = 50.0;
  final _cardWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(child: RandomImage(), bottom: _cardHeight / 2),
                  Positioned(height: _cardHeight, bottom: 0, width: _cardWidth, child: _cardCustom()),
                ],
              )),
          Spacer(flex: 6),
        ],
      ),
    );
  }

  Card _cardCustom() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.engineering,
            color: Colors.red,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "THE ENGINE",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
