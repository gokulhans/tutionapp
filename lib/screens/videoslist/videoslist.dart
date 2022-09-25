import 'package:flutter/material.dart';
import 'package:tutionapp/components/appheader.dart';
import 'package:tutionapp/components/sidebar.dart';
import 'package:tutionapp/screens/video/video.dart';
import 'package:tutionapp/screens/video/videohelper.dart';

class Videolist extends StatefulWidget {
  const Videolist({Key? key}) : super(key: key);

  @override
  State<Videolist> createState() => _VideolistState();
}

class _VideolistState extends State<Videolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const AppHeader(
          title: 'Videos',
        ),
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
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Video()),
                      );
                    },
                    child: const VideoCard(
                      icon: Icons.person,
                      titleName: 'Speaking skills',
                      subtitleName: '16 Excercises',
                      color: Colors.green,
                    ),
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
