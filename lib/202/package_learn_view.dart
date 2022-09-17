import 'package:flutter/material.dart';

import 'package/loading_bar.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
      ),
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoadingBar(),
          Text("a", style: Theme.of(context).textTheme.subtitle1),
        ],
      ),
    );
  }
}
