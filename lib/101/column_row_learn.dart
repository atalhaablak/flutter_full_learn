import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // 4 + 2 + 2 + 2
          Expanded(
              flex: 4, //%40
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.pink,
                    ),
                  ),
                ],
              )),
          const Spacer(flex: 2),
          Expanded(
              flex: 2,
              child: Row(
                // default olarak maxtır
                mainAxisSize: MainAxisSize.min,
                //ana özelliği için main
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // tersine kullanıcaksan
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("a"),
                  Text("a1"),
                  Text("a2"),
                ],
              )),

          SizedBox(
            height: ProjectContainerSizes.cardHeight,
            child: Column(
              children: const [
                Expanded(child: Text("data")),
                Expanded(child: Text("data")),
                Expanded(child: Text("data")),
                Spacer(),
                Expanded(child: Text("data")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
