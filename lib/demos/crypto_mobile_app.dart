import 'package:flutter/material.dart';

class CryptoApp extends StatefulWidget {
  const CryptoApp({Key? key}) : super(key: key);

  @override
  State<CryptoApp> createState() => _CryptoAppState();
}

class _CryptoAppState extends State<CryptoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _CustomAppBar(helloTitle: "Good Morning, ", nameTitle: "Ahmet Talha"),
            _CustomSearch(),
          ],
        ),
      ),
    );
  }
}

class _CustomSearch extends StatelessWidget {
  const _CustomSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.blue,
        ),
        hintText: "Aramak istediğiniz kelimeyi giriniz...",
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({
    Key? key,
    required this.helloTitle,
    required this.nameTitle,
  }) : super(key: key);

  final String helloTitle;
  final String nameTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(helloTitle, style: Theme.of(context).textTheme.subtitle1),
              Padding(
                padding: _PaddingUtility.titlePadding,
                child: Text(nameTitle, style: Theme.of(context).textTheme.headline6),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.red.shade400,
            child: Icon(
              Icons.photo,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

class _PaddingUtility {
  static final pagePadding = EdgeInsets.all(16);
  static final titlePadding = EdgeInsets.only(top: 5);
}
