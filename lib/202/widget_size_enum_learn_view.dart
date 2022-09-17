import 'package:flutter/material.dart';

class WidgetSizeEnumLearnView extends StatefulWidget {
  const WidgetSizeEnumLearnView({Key? key}) : super(key: key);

  @override
  State<WidgetSizeEnumLearnView> createState() => _WidgetSizeEnumLearnViewState();
}

class _WidgetSizeEnumLearnViewState extends State<WidgetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          height: WidgetSizes.normalCardHeight.value(),
          color: Colors.green,
        ),
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileWith }

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30.0;
      case WidgetSizes.circleProfileWith:
        return 25.0;
    }
  }
}
