import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LifeCycleLearn extends StatefulWidget {
  const LifeCycleLearn({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  State<LifeCycleLearn> createState() => _LifeCycleLearnState();
}

class _LifeCycleLearnState extends State<LifeCycleLearn> {
  String _message = "";
  late final bool _isOdd;
  // message tekse yanına tek ya da çift yaz.

  @override
  void didChangeDependencies() {
    // initstate den sonra çalışır
    //
    super.didChangeDependencies();
    if (kDebugMode) {
      print('C');
    }
    // herhangi bir durumdan ötürü takrardan değişim durumu çağırıldığuında bu kullanılır.
  }

  @override
  void didUpdateWidget(covariant LifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (kDebugMode) {
      print('B');
    }
  }

  @override
  void dispose() {
    // Sayfadan çıkıldığı andır. Sayfadan çıkış yapıldığı an yapılacak işlerdir.
    super.dispose();
    if (kDebugMode) {
      print('alo');
    }
  }

  @override
  void initState() {
    //build edilmeden önce çalışır ve biter.
    super.initState();
    _isOdd = widget.message.length.isOdd;
    _message = widget.message;
    _computeName();
    if (kDebugMode) {
      print("A");
    }
  }

  void _computeName() {
    if (_isOdd) {
      _message += " Çift";
    } else {
      _message += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_message)),
        body: widget.message.length.isOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(onPressed: () {}, child: Text(_message)));
  }
}
