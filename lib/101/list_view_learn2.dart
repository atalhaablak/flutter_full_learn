import 'package:flutter/material.dart';

class ListViewLearnState2 extends StatefulWidget {
  const ListViewLearnState2({Key? key}) : super(key: key);

  @override
  State<ListViewLearnState2> createState() => _ListViewLearnState2State();
}

class _ListViewLearnState2State extends State<ListViewLearnState2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(child: Text("MERHABA", style: Theme.of(context).textTheme.headline1, maxLines: 1)),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(
            color: Colors.blue,
          ),
          SizedBox(
            height: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green, width: 100),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.green, width: 100),
                Container(color: Colors.white, width: 100),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        ],
      ),
    );
  }
}
