import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tutionapp/screens/bookmark/bookmark.dart';
import 'package:tutionapp/screens/home/home.dart';
import 'package:tutionapp/screens/login/login.dart';
import 'package:tutionapp/screens/profile/profile.dart';
import 'package:tutionapp/screens/subjects/subjects.dart';
import 'package:tutionapp/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    // systemNavigationBarColor: Colors.white,
    // systemNavigationBarIconBrightness: Brightness.dark,
  ));

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDAnXQgfGDYcfhP1WIO2udIFUB34KYzVlo",
      appId: "eduapp-27da8",
      messagingSenderId: "190219366368",
      projectId: "eduapp-27da8",
    ),
  );

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
            primaryColor: Colors.white24,
            textTheme:
                screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: COLOR_DARK_BLUE)),
        debugShowCheckedModeBanner: false,
        home: const MyHomePage());
    // home: const Video());
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
    return const SafeArea(child: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Home(),
    const Subjects(),
    const Bookmark(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: COLOR_WHITE,
        body: pages[pageIndex],
        bottomNavigationBar: buildMyNavBar(context),
      ),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, spreadRadius: 1, blurRadius: 4)
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_rounded,
                    color: Colors.green,
                    size: 25,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 25,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.my_library_books,
                    color: Colors.green,
                    size: 25,
                  )
                : const Icon(
                    Icons.my_library_books_outlined,
                    color: Colors.grey,
                    size: 25,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.bookmark_rounded,
                    color: Colors.green,
                    size: 25,
                  )
                : const Icon(
                    Icons.bookmark_border,
                    color: Colors.grey,
                    size: 25,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Login()),
              // );
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person_rounded,
                    color: Colors.green,
                    size: 25,
                  )
                : const Icon(
                    Icons.person_outline_rounded,
                    color: Colors.grey,
                    size: 25,
                  ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Page Number 1",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
