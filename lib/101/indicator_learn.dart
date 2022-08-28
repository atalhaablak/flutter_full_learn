import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularRedProgress()],
      ),
      body: const LinearProgressIndicator(),
    );
  }
}

class CenterCircularRedProgress extends StatelessWidget {
  const CenterCircularRedProgress({
    Key? key,
  }) : super(key: key);
  final redColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: redColor,
      value: 0.5, //servisten data inerlen kullanılabilir
      backgroundColor: Colors.white,
    ));
  }
}
