import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RememberPage extends StatefulWidget {
  const RememberPage({Key? key}) : super(key: key);

  @override
  State<RememberPage> createState() => _RememberPageState();
}

class _RememberPageState extends State<RememberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Remember Page")),
      body: Column(children: [
        Card(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundColor: Colors.black, radius: 50),
              ),
              Container(
                child: Center(
                  child: Text(
                    "Kişi Deneme",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          color: Colors.red,
        ),
      ]),
    );
  }
}
