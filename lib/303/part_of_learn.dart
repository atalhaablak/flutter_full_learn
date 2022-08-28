import 'package:flutter/material.dart';

class PartOfLearn extends StatefulWidget {
  const PartOfLearn({Key? key}) : super(key: key);

  @override
  State<PartOfLearn> createState() => _PartOfLearnState();
}

class _PartOfLearnState extends State<PartOfLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _PartOfAppBar(),
      body: Text("data"),
    );
  }
}

class _PartOfAppBar extends StatelessWidget with PreferredSizeWidget {
  const _PartOfAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("a"),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.abc_rounded))],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
