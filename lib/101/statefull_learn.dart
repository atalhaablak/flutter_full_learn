import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../product/counter_hello_button.dart';
import '../product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);
  /* Değişmez bir kompenenttir ve sadece dışarıdan veri alıp verir. */
  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  /* Asıl işlemlerin yapıldığı değişen verilerin döndürüldüğü yer */

  int _countValue = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headline2,
          )),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    if (kDebugMode) {
      print("burda");
    }
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
