import 'package:flutter/material.dart';
import 'package:tutionapp/components/appheader.dart';
import 'package:tutionapp/screens/subjects/subjectshelp.dart';

class Subjects extends StatefulWidget {
  const Subjects({ Key? key }) : super(key: key);

  @override
  State<Subjects> createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppHeader(title: 'Subject'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,),
            child: ListView(
              padding: const EdgeInsets.only(top: 5,),
              physics: const BouncingScrollPhysics(),
              children: const [
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
    );
  }
}