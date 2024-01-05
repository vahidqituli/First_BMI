import 'package:bmi/screen/home_screen.dart';
import 'package:bmi/screen/test_screen.dart';
import 'package:bmi/widgets/left.dart';
import 'package:bmi/widgets/right.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'dana'), home: HomeScreen());
  }
}
