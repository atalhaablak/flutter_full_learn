import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              // bir sonsuzluk vardır buna dikkat ederek kodlama yapılması gerekir.
              children: [
                FittedBox(
                  child: Text(
                    "Merhaba",
                    style: Theme.of(context).textTheme.headline1,
                    maxLines: 1,
                  ),
                ),
                Container(color: Colors.red, height: 300),
                const Divider(),
                SizedBox(
                  height: 300,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(color: Colors.green, width: 100),
                      Container(color: Colors.white, width: 100),
                      Container(color: Colors.green, width: 100),
                      Container(color: Colors.white, width: 100),
                      Container(color: Colors.green, width: 100),
                      Container(color: Colors.white, width: 100),
                      Container(color: Colors.green, width: 100),
                      Container(color: Colors.white, width: 100),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
                // XXX
                FittedBox(
                  child: Text(
                    "Merhaba",
                    style: Theme.of(context).textTheme.headline1,
                    maxLines: 1,
                  ),
                ),
                Container(color: Colors.red, height: 300),
                const Divider(),
                SizedBox(
                  height: 300,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(color: Colors.green, width: 100),
                      Container(color: Colors.white, width: 100),
                      Container(color: Colors.green, width: 100),
                      Container(color: Colors.white, width: 100),
                      Container(color: Colors.green, width: 100),
                      Container(color: Colors.white, width: 100),
                      Container(color: Colors.green, width: 100),
                      Container(color: Colors.white, width: 100),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.close)),

                const ListDemo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListDemo extends StatefulWidget {
  const ListDemo({Key? key}) : super(key: key);

  @override
  State<ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  @override
  void initState() {
    super.initState();
    if (kDebugMode) {
      print("HELLO");
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (kDebugMode) {
      print("EXIT");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
