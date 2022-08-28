import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = "Veli";
  final String? userName;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome $name: ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              textScaleFactor: 1.2,
              style: ProjectStyles()._welcomeStyle,
            ),
            Text(
              "Welcome $name: ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              textScaleFactor: 1.2,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: ProjectColors.welcomeColor,
                  ),
              // daha kullanışlı daha profesyonel.
            ),
            Text(userName ?? ''),
            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  final TextStyle _welcomeStyle = const TextStyle(
    color: Colors.lime,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
