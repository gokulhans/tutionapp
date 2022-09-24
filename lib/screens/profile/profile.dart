import 'package:flutter/material.dart';
import 'package:tutionapp/components/appheader.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          AppHeader(
            title: 'Profile',
          ),
        ],
      ),
    );
  }
}