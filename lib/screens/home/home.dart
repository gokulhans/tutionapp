import 'package:flutter/material.dart';
import 'package:tutionapp/screens/home/homehelp.dart';

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
  int currentIndex = 0;
  final screens = [const Home(), const Courses(), const Syllabus(), const Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            unselectedLabelStyle: const TextStyle(
              color: Colors.grey,
            ),
            selectedIconTheme: const IconThemeData(
              color: Colors.blue,
            ),
            selectedLabelStyle: const TextStyle(
              color: Colors.blue,
            ),
            unselectedIconTheme: const IconThemeData(
              color: Colors.grey,
            ),
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.graphic_eq_outlined), label: 'Syllabus'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: 'Profile'),
            ]),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      //greetings row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hi, Govind!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "23 Jan, 2022",
                                style: TextStyle(
                                    color: Colors.blue[200], fontSize: 12),
                              )
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.blue[600]),
                            padding: const EdgeInsets.all(2),
                            child: IconButton(
                                icon: const Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      //searchbar

                      Container(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(8)),
                        child: const TextField(
                          decoration: InputDecoration(
                            icon: Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                            hintText: "Search...",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 14),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),

                //Cards
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Excellent",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  IconButton(
                                      icon: const Icon(Icons.more_horiz),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      })
                                ]),
                            const SizedBox(
                              height: 10,
                            ),

                            //List Tiles
                            Expanded(
                              child: ListView(
                                physics: const BouncingScrollPhysics(),
                                children: const [
                                  TileCard(
                                    icon: Icons.favorite,
                                    titleName: 'Speaking skills',
                                    subtitleName: '16 Excercises',
                                    color: Colors.orange,
                                  ),
                                  TileCard(
                                    icon: Icons.person,
                                    titleName: 'Speaking skills',
                                    subtitleName: '16 Excercises',
                                    color: Colors.green,
                                  ),
                                  TileCard(
                                    icon: Icons.star,
                                    titleName: 'Speaking skills',
                                    subtitleName: '16 Excercises',
                                    color: Colors.pink,
                                  ),
                                  TileCard(
                                    icon: Icons.star,
                                    titleName: 'Speaking skills',
                                    subtitleName: '16 Excercises',
                                    color: Colors.pink,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
