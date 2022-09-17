import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/202/animated_learn_view.dart';
import 'package:flutter_full_learn/202/cache/shared_learn_cahce.dart';
import 'package:flutter_full_learn/202/image_learn_202.dart';
import 'package:flutter_full_learn/202/package_learn_view.dart';
import 'package:flutter_full_learn/202/state_mange/state_manage_learn_view.dart';
import 'package:flutter_full_learn/202/widget_size_enum_learn_view.dart';
import 'package:flutter_full_learn/theme/theme.dart';
import 'package:flutter_full_learn/theme/theme_learn_view.dart';

import '101/color_learn.dart';

import '202/form_learn_view.dart';
import '202/oop_learn_view.dart';
import '202/service/service_learn_view.dart';
import '202/service/service_post_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: LighTheme().theme,
        /* ThemeData.dark().copyWith(
            bottomAppBarTheme: BottomAppBarTheme(
              shape: CircularNotchedRectangle(),
            ),
            tabBarTheme: const TabBarTheme(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.yellow,
              indicatorSize: TabBarIndicatorSize.label,
            ),
            listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
            progressIndicatorTheme: const ProgressIndicatorThemeData(
              color: Colors.white,
            ),
            inputDecorationTheme: const InputDecorationTheme(
                filled: true,
                fillColor: Colors.transparent,
                iconColor: Colors.red,
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600)),
            cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            errorColor: ColorsItems.sulu,
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: Colors.transparent,
              elevation: 0,
            )), */
        home: SharedLearn());
  }
}
