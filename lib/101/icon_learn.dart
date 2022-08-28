import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final _appbarTitle = "Icon Learn";
  final IconSizes iconSizes = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appbarTitle)),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              // color - size
              color: iconColors.froly,
              // her zaman froly renginde kalacak
              size: iconSizes.iconSmall,
            ),
          ),
          const SizedBox(height: 50),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              // color - size
              color: Theme.of(context).backgroundColor,
              // her zaman temaya ayak uydaracak
              size: iconSizes.iconSmall,
            ),
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
}
