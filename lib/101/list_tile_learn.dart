import 'package:flutter/material.dart';

import '../core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {},
                title: const RandomImage(),
                subtitle: const Text("How do you use your card"),
                // soluna leading
                leading: const Icon(Icons.money),
                // sağa koyacaksan
                trailing: Container(
                  width: 20,
                  color: Colors.red,
                  child: const SizedBox(
                    width: 20,
                    child: SizedBox(width: 20, child: Icon(Icons.chevron_right)),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

//https://picsum.photos/200/300