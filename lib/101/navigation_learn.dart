import 'package:flutter/material.dart';

import 'image_learn.dart';
import 'navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  List<int> selectedItems = [];

  void addSelectedItems(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            final response = await navigateToWidgetNormal<bool>(
                context,
                NavigateDetailLearn(
                  isOkey: selectedItems.contains(index),
                ));

            if (response is bool) {
              addSelectedItems(index, response);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
            return const ImageLearn();
          })));
        },
        child: const Icon(Icons.navigation_sharp),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true, // yukarıdan aşağıya gelir (kapatmalı)
      settings: const RouteSettings(),
    ));
  }
}

Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) => Navigator.of(context).push<T>(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true, // yukarıdan aşağıya gelir (kapatmalı)
      settings: const RouteSettings(),
    ));
