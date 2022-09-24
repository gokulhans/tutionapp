import 'package:flutter/material.dart';
import 'package:tutionapp/components/appheader.dart';
import 'package:tutionapp/screens/home/homehelp.dart';
import 'package:tutionapp/utils/constants.dart';

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
    return Center(
      child: Column(
        children: const [
          AppHeader(
            title: 'Home',
          ),
        ],
      ),
    );
  }
}
