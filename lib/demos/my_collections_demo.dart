import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems()._items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Collections"),
        leading: Icon(Icons.chevron_left),
      ),
      body: ListView.builder(
        padding: PaddingUtility().paddingHorizontal,
        itemBuilder: (context, index) {
          return _categoryCard(model: _items[index]);
        },
        itemCount: _items.length,
      ),
    );
  }
}

class _categoryCard extends StatelessWidget {
  const _categoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: Padding(
        padding: PaddingUtility().paddingGeneral,
        child: Column(
          children: [
            Image.asset(
              _model.imagePath,
              fit: BoxFit.none,
            ),
            Padding(
              padding: PaddingUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.title),
                  Text("${_model.price.toString()} eth"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = EdgeInsets.only(top: 10);
  final paddingBottom = EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  late final List<CollectionModel> _items;

  CollectionItems() {
    _items = [
      CollectionModel(imagePath: ProjectImage.imageCollection, title: 'Abstract Art0', price: 3.4),
      CollectionModel(imagePath: ProjectImage.imageCollection, title: 'Abstract Art1', price: 3.4),
      CollectionModel(imagePath: ProjectImage.imageCollection, title: 'Abstract Art2', price: 3.4),
      CollectionModel(imagePath: ProjectImage.imageCollection, title: 'Abstract Art3', price: 3.4),
    ];
  }
}

class ProjectImage {
  static const imageCollection = "assets/png/image_collection.png";
}
