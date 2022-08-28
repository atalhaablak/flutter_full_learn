import 'package:flutter/material.dart';

import 'model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  final user9 = PostModel8(body: "a");
  @override
  void initState() {
    super.initState();

    final user1 = PostModel1()
      ..userId = 1
      ..body = "descriptipn body";

    final user2 = PostModel2(userId: 1, id: 2, title: "title", body: "body");
    user2.body = "update edilebiliyor.";

    final user3 = PostModel3(12, 21, "titlea", "body açıklmaa user3");
    // user3 te oluşmuş bir userın değerlerini değiştiremezsin

    // localde işlemler yapıyorsan bu yöntem daha mantıklı olur.
    final user4 = PostModel4(body: '', id: 22, title: '', userId: 33);
    // named kullanılır ve sonradan değiştirilemez

    final user5 = PostModel5(userId: 10, id: 10, title: "10", body: "101010");
    // user5.userId = 10; sadece user ıd atanabilir sonradan diğerlerine dokunamazsın

    final user6 = PostModel6(userId: 1, id: 2, title: "a", body: "b");

    final user7 = PostModel7();
    // değerr vermezsen default tanımlamalarını alır.

    //Servisten data çekiyorsan en mantıklı işlem bu olur.
    final user8 = PostModel8(body: "a");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user9.title ?? "Not have any data"),
      ),
    );
  }
}
