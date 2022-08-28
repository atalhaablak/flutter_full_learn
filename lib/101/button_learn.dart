import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text("Save"),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }

              return Colors.white;
            })),
          ),
          const ElevatedButton(onPressed: null, child: Text("Elevated")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          FloatingActionButton(
            onPressed: () {
              //servise isteat
              // sayfanın rengini düzenle
              // buton yapacağı işlem yapılır.
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {},
            child: const SizedBox(
              width: 200,
              child: Text("outlined"),
            ),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.red,
            ),
          ),
          InkWell(
            child: const Text('custom'),
            onTap: () {},
            // Bir widgeta butonmuş gibi müdahele etmemize yarar.
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20, right: 40, left: 40),
              child: Text(
                "Place Bid",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Borders:
//  - CircleBorder
//  - RoundedRectangleBorder
