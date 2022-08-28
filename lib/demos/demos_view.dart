import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final _title = 'Create your first note';
  final _description = " add a note ";
  final _createNote = "Create Note";
  final _importNotes = "İmport Note";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBook),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: TitleWidget(title: _title),
            ),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _subTitleWidget(
                text: _description,
              ),
            ),
            Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonHeights.buttonNormalHeight,
            child: Center(
                child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headline5,
            ))));
  }
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}

// center text widget
class _subTitleWidget extends StatelessWidget {
  const _subTitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.text})
      : super(key: key);
  final TextAlign textAlign;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text * 8,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static final EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
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
