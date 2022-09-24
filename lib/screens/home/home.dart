import 'package:flutter/material.dart';
import 'package:tutionapp/components/appheader.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tutionapp/components/sidebar.dart';
import 'package:tutionapp/screens/home/homebuttons.dart';
import 'package:tutionapp/screens/home/homehelp.dart';
// import 'package:tutionapp/screens/home/homehelp.dart';
// import 'package:tutionapp/utils/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Homedesign();
  }
}

class Homedesign extends StatefulWidget {
  const Homedesign({Key? key}) : super(key: key);
  @override
  State<Homedesign> createState() => _HomedesignState();
}

class _HomedesignState extends State<Homedesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const AppHeader(title: 'Home'),
        elevation: 0,
        toolbarHeight: 70,
        titleSpacing: -10,
      ),
      body: Center(
        child: Column(
          children: const [
            Bannerwidget(),
            HomeButtons(),
          ],
        ),
      ),
    );
  }
}
