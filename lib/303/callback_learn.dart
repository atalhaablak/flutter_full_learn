// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_full_learn/product/widget/callback_drapdown.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({Key? key}) : super(key: key);

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CallbackDropDown(onUserSelected: (CallBackUser user) {
            print(user);
          }),
        ],
      ),
    );
  }
}

class CallBackUser {
  final String name;
  final int id;

  CallBackUser(this.name, this.id);

  // TODO: Dummy remove it!
  static List<CallBackUser> dummyUsers() {
    return [
      CallBackUser("veli", 123),
      CallBackUser("ahmet", 456),
    ];
  }

  @override
  bool operator ==(covariant CallBackUser other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
