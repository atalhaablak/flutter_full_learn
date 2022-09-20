extension ColorStringExtension on String {
  int get colorValue {
    var _newColor = replaceFirst('#', '0xff');
    return int.parse(_newColor);
  }
}
