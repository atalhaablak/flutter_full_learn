import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../core/random_image.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          itemBuilder: (context, index) {
            if (kDebugMode) {
              print("index: " + index.toString());
            }
            return SizedBox(
              height: 200,
              child: Column(
                children: [const Expanded(child: RandomImage()), Text("$index")],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 19),
    );
  }

  /* 
   */
}
