// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:voyage101/widgets/background1.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import '../MainPage1/mainpage.dart';
import '../widgets/DetailScreen.dart';

class RoomDesign1 extends StatefulWidget {
  const RoomDesign1({
    Key? key,
  }) : super(key: key);

  @override
  State<RoomDesign1> createState() => _RoomDesign1State();
}

class _RoomDesign1State extends State<RoomDesign1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGround1(),
        Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Two BedRoom Apartment"),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: "image1",
                  child: Image.asset(
                    "assets/HOXTON_270717_0283.jpg.webp",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      "Sky Suites Amenities",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        backgroundImage: AssetImage("assets/Houses1.webp"),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1. 25x25 Square Feet room",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "2. Room is close to the Poolside",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        backgroundImage: AssetImage("assets/bed.png"),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1. 25x25 Square Feet room",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "2. Room is close to the Poolside",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        backgroundImage: AssetImage("assets/carPark.png"),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1. 25x25 Square Feet room",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "2. Room is close to the Poolside",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        backgroundImage: AssetImage("assets/dryer1.png"),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1. 25x25 Square Feet room",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "2. Room is close to the Poolside",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        backgroundImage: AssetImage("assets/wifi.png"),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1. 25x25 Square Feet room",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "2. Room is close to the Poolside",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: GNav(
              tabBackgroundColor: Color.fromARGB(255, 0, 0, 0),
              tabBorderRadius: 15,
              backgroundColor: Colors.transparent,
              color: Colors.white,
              activeColor: Colors.white,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              padding: const EdgeInsets.all(20.0),
              tabs: [
                GButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage1(),
                      ),
                    );
                  },
                  icon: Icons.home_work,
                  text: 'Home',
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
                GButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    );
                  },
                  icon: Icons.bed_outlined,
                  text: 'Rooms',
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
                const GButton(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
                const GButton(
                  icon: Icons.favorite,
                  text: 'Favorite',
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
                GButton(
                  onPressed: () {},
                  icon: Icons.person,
                  text: 'Profile',
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
