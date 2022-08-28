import 'package:flutter/material.dart';

import '../product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofocus: true,
            textInputAction: TextInputAction.next,
            autofillHints: const [AutofillHints.email],
            focusNode: focusNodeTextFieldOne,
            decoration: _InputDecarotor().emailInput,
          ),
          TextField(focusNode: focusNodeTextFieldTwo)
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      color: Colors.green,
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      duration: const Duration(seconds: 1),
    );
  }
}

/* class TextProjectInputFormater {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    } else {
      return oldValue;
    }
  });
} */

class _InputDecarotor {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
    hintText: "exmp: example@example.com",
    filled: true,
  );
}
