import 'package:flutter/material.dart';

class StlesLearn extends StatelessWidget {
  const StlesLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          TitleTextWidget(title: "veli1"),
          _EmptyBox(),
          TitleTextWidget(title: "veli2"),
          _EmptyBox(),
          TitleTextWidget(title: "veli3"),
          _EmptyBox(),
          TitleTextWidget(title: "veli4"),
          _EmptyBox(),
          TitleTextWidget(title: "veli5"),
          _EmptyBox(),
          _CustomContainer(),
          _EmptyBox(),
        ],
      ),
    );
  }
}

class _EmptyBox extends StatelessWidget {
  const _EmptyBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.title}) : super(key: key);
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Text("data", style: Theme.of(context).textTheme.headline3);
  }
}
