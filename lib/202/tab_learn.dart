import 'package:flutter/material.dart';
import 'package:flutter_full_learn/demos/course_home_page.dart';
import 'package:flutter_full_learn/demos/matS_home_page.dart';
import 'package:flutter_full_learn/demos/mat_sistem.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double notchedValue = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(onPressed: () {
          _tabController.animateTo(_MyTabViews.home.index);
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          notchMargin: notchedValue,
          shape: CircularNotchedRectangle(),
          child: _myTabView(),
        ),
        /* appBar: AppBar(
              bottom: TabBar(
              tabs: [Tab(text: "Page 1"), Tab(text: "Page 2")],
            ),
              ), */
        body: _tabbarView(),
      ),
    );
  }

  TabBar _myTabView() {
    return TabBar(
      controller: _tabController,
      tabs: _MyTabViews.values
          .map((e) => Tab(
                text: "${e.name}",
              ))
          .toList(),
    );
  }

  TabBarView _tabbarView() {
    return TabBarView(
      physics: NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [
        MatHomePage(),
        MatSistemLogInPage(),
        MatHomePage(),
        MatSistemLogInPage(),
      ],
    );
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}
