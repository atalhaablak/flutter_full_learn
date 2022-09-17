import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({Key? key}) : super(key: key);

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          // Text içindeki işlemlere anlık müdahale yapabilirsiniz.
          print("a");
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextFormField(validator: FormFieldValidator().isNotEmpty),
              TextFormField(validator: FormFieldValidator().isNotEmpty),
              ElevatedButton(
                  onPressed: () {
                    if (_key.currentState?.validate() ?? false) {
                      print("okey");
                    }
                  },
                  child: Text("save")),
            ],
          ),
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValiadatorMessage._notEmpty;
  }
}

class ValiadatorMessage {
  static const String _notEmpty = "Boş geçilemez";
}
