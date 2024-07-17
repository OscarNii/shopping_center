// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Background.dart';
import 'MainPage1.dart';
import 'detailHome.dart';
import 'roomDesign1.dart';

class RoomDesign extends StatefulWidget {
  const RoomDesign({
    Key? key,
  }) : super(key: key);

  @override
  State<RoomDesign> createState() => _RoomDesignState();
}

class _RoomDesignState extends State<RoomDesign> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGround1(),
        Scaffold(
          backgroundColor: Colors.transparent,
          extendBody: true,
          appBar: AppBar(
            title: const Text('Sky Suite Hotel'),
          ),
          body: GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const RoomDesign1(),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Hero(
                      tag: "image1",
                      child: Image.asset(
                        "assets/HOXTON_270717_0283.jpg.webp",
                        width: 180,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Superior Class Room",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: Icon(
                                  Icons.king_bed,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Two Bed Room ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: Icon(
                                  Icons.currency_pound,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "650.00, Per Night",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Hero(
                      tag: "image2",
                      child: Image.asset(
                        "assets/roomm1.jpg",
                        width: 190,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Presidential Room",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: Icon(
                                  Icons.king_bed,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Two Bed Room ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: Icon(
                                  Icons.currency_pound,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "650.00, Per Night",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
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
