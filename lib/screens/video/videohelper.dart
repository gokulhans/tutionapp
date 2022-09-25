import 'package:flutter/material.dart';

class VideolistHelper extends StatefulWidget {
  const VideolistHelper({Key? key}) : super(key: key);

  @override
  State<VideolistHelper> createState() => _VideolistHelperState();
}

class _VideolistHelperState extends State<VideolistHelper> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class VideoCard extends StatelessWidget {
  final icon;
  final String titleName;
  final String subtitleName;
  final color;

  const VideoCard({
    Key? key,
    required this.icon,
    required this.titleName,
    required this.subtitleName,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200, spreadRadius: 1, blurRadius: 5)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      color: color,
                      child: Container(
                        height:72,
                        width: 112,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/image_1.jpg'),
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titleName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        subtitleName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              // Icon(
              //   Icons.circle,
              //   color: color,
              //   size: 14,
              // )
            ],
          )),
    );
  }
}
