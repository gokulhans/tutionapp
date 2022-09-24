import 'package:flutter/material.dart';
import 'package:tutionapp/components/appheader.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          AppHeader(
            title: 'Bookmarks',
          ),
        ],
      ),
    );
  }
}
