import 'package:flutter/material.dart';

class MatSistemTextLogo extends StatelessWidget {
  MatSistemTextLogo(
      {Key? key,
      required String matSistemLogo,
      this.containerWidth = 30,
      this.containerHeight = 30,
      this.imageColor = Colors.blue,
      this.textColor = Colors.blue})
      : _matSistemLogo = matSistemLogo,
        super(key: key);

  final double containerWidth;
  final double containerHeight;

  final Color imageColor;
  final Color textColor;

  final String _matSistemLogo;
  final String _matSistemText = "Mat Sistem";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: containerWidth,
          height: containerHeight,
          child: Image.asset(
            _matSistemLogo,
            color: imageColor,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            _matSistemText,
            style: Theme.of(context).textTheme.headline5?.copyWith(color: textColor),
          ),
        ),
      ],
    );
  }
}
