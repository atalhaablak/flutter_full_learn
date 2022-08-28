import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  final String _imagePath = "https://i.ya-webdesign.com/images/books-and-apples-png-12.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(
            _imagePath,
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "book";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
