// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:tutionapp/screens/video/videohelper.dart';
import 'package:tutionapp/screens/videoslist/videoslist.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: 'WKwNbLvjaTY',
                flags: const YoutubePlayerFlags(
                  hideControls: false,
                  controlsVisibleAtStart: true,
                  autoPlay: false,
                  mute: false,
                ),
              ),
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.green,
            ),
            SizedBox(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'Physics Waves Topic 1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.bookmark_add_outlined,
                                    size: 20,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: ListView(
                  padding: const EdgeInsets.only(
                    top: 0,
                  ),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const Video()));
                      },
                      child: const VideoCard(
                        icon: Icons.person,
                        titleName: 'Speaking skills',
                        subtitleName: '16 Excercises',
                        color: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const VideoCard(
                        icon: Icons.person,
                        titleName: 'Speaking skills',
                        subtitleName: '16 Excercises',
                        color: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const VideoCard(
                        icon: Icons.person,
                        titleName: 'Speaking skills',
                        subtitleName: '16 Excercises',
                        color: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const VideoCard(
                        icon: Icons.person,
                        titleName: 'Speaking skills',
                        subtitleName: '16 Excercises',
                        color: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const VideoCard(
                        icon: Icons.person,
                        titleName: 'Speaking skills',
                        subtitleName: '16 Excercises',
                        color: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const VideoCard(
                        icon: Icons.person,
                        titleName: 'Speaking skills',
                        subtitleName: '16 Excercises',
                        color: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const VideoCard(
                        icon: Icons.person,
                        titleName: 'Speaking skills',
                        subtitleName: '16 Excercises',
                        color: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const VideoCard(
                        icon: Icons.person,
                        titleName: 'Speaking skills',
                        subtitleName: '16 Excercises',
                        color: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const VideoCard(
                        icon: Icons.person,
                        titleName: 'Speaking skills',
                        subtitleName: '16 Excercises',
                        color: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
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
      ),
    );
  }
}

// UrltoString(String videoURL) {
//   try {
//     String? videoID = YoutubePlayer.convertUrlToId(videoURL);
//     print(videoID);
//     return videoID;
//   } on Exception catch (exception) {
//     print(exception);
//     return "";
//   } catch (error) {
//     print(error);
//     return "";
//   }
// }
