import 'package:flutter/material.dart';
import 'package:tutionapp/utils/constants.dart';

class AppHeader extends StatelessWidget {
  final title;
  const AppHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20,right: 30),
      child: Column(
        children: [
          //greetings row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      // fontFamily: "Montserrat"
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: COLOR_WHITE,
                ),
                padding: const EdgeInsets.all(2),
                child: IconButton(
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
