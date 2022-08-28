import 'package:flutter/material.dart';

import 'container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  height: 200,
                ));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      appBar: AppBar(title: const Text("Scaffol Samples")),
      body: const Text("Merhaba"),
      bottomNavigationBar: Container(
        height: 200,
        decoration: ProjectContainerDecoration(),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.navigate_before_outlined), label: "a"),
            BottomNavigationBarItem(icon: Icon(Icons.navigate_next_outlined), label: "b"),
          ],
        ),
      ),
    );
  }
}
