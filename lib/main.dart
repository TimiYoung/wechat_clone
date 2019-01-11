import 'package:flutter/material.dart';
import 'home/home_screen.dart';
import 'consts.dart' show AppColors;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '微信',
      theme: ThemeData.light().copyWith(
        primaryColor: Color(AppColors.AppColor),
      ),
      home: HomeScreen(),
    );
  }
}

