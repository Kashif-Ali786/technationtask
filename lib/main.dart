import 'package:flutter/material.dart';
import 'package:technationtask/screens/main_screen.dart';
import 'package:technationtask/util/const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TechNation Task',
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: primaryColor,
        ),
      ),
      home: DefaultTabController(
        length: 2,
        child: MainScreen(),
      ),
    );
  }
}
