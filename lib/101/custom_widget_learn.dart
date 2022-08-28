import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);
  final String buttonText = "food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomFoodButton(buttonText: buttonText, onPressed: () {}),
            ),
          )),
          const SizedBox(height: 100),
          CustomFoodButton(buttonText: buttonText, onPressed: () {}),
        ],
      ),
    );
  }
}

class _ColorUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget with _ColorUtility, _PaddingUtility {
  CustomFoodButton({Key? key, required this.buttonText, required this.onPressed}) : super(key: key);
  final String buttonText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: redColor,
        shape: const StadiumBorder(),
      ),
      onPressed: () {},
      child: Padding(
        padding: normal2xPadding,
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
