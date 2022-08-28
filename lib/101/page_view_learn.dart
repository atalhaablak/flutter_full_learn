import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';

import 'icon_learn.dart';
import 'image_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.9);

  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: _Durationutility._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(
              Icons.chevron_left,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: _Durationutility._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(
              Icons.chevron_right,
            ),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        onPageChanged: _updatePageIndex,
        padEnds: false,
        controller: _pageController,
        children: [const ImageLearn(), IconLearnView(), const StackLearn()],
      ),
    );
  }
}

class _Durationutility {
  static const _durationLow = Duration(seconds: 1);
}
