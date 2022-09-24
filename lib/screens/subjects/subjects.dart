import 'package:flutter/material.dart';
import 'package:tutionapp/components/appheader.dart';
import 'package:tutionapp/components/sidebar.dart';
import 'package:tutionapp/screens/subjects/subjectshelp.dart';

class Subjects extends StatefulWidget {
  const Subjects({Key? key}) : super(key: key);

  @override
  State<Subjects> createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: ListView(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                physics: const BouncingScrollPhysics(),
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                  TileCard(
                    icon: Icons.person,
                    titleName: 'Speaking skills',
                    subtitleName: '16 Excercises',
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
