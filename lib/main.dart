import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tutionapp/screens/home/home.dart';
import 'package:tutionapp/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: COLOR_WHITE,
            textTheme:
                screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
            fontFamily: "Montserrat",
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: COLOR_DARK_BLUE)),
        debugShowCheckedModeBanner: false,
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: Home()));
  }
}
