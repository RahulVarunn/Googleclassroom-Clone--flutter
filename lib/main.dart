import 'package:flutter/material.dart';

import 'home.dart';
import 'join_class.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black)),
        scaffoldBackgroundColor: Colors.white),
    initialRoute: 'Home',
    routes: {
      'Home': (context) => home(),
      'join_class': (context) => join_class(),
    },
  ));
}
