import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(), // boş alan atanır.
          SizedBox.square(
            dimension: 50,
            child: Text("b" * 50),
          ),

          Container(
            width: 50,
            height: 50,
            constraints: const BoxConstraints(
              maxWidth: 150,
              minWidth: 100,
              minHeight: 50,
              maxHeight: 120,
            ),
            child: Text("aa" * 100, maxLines: 2),
            padding: const EdgeInsets.all(10),
            // içindeki kompenente olan uzaklıklarını ayarlar.
            margin: const EdgeInsets.all(20),
            // dışardakiyle arasında ki boşlukları ayarlar.
            decoration: ProjectUtility.boxDecoration,
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
    boxShadow: const [BoxShadow(color: Colors.green, offset: Offset(0.1, 1))],
    border: Border.all(width: 10, color: Colors.white12),
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: const [BoxShadow(color: Colors.green, offset: Offset(0.1, 1))],
            //shape: BoxShape.circle,
            border: Border.all(width: 10, color: Colors.white12));
}
