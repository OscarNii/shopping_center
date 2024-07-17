// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'Cslider.dart';
import 'List2.dart';
import 'List3.dart';
import 'List4.dart';
import 'ListDetails1.dart';
import 'ListDetails2.dart';
import 'ListDetails3.dart';
import 'ListDetails4.dart';
import 'backgroud.dart';
import 'detailHome.dart';
import 'roomDesign.dart';
import 'rowBed.dart';
import 'rowHotel1.dart';
import 'rowSearch.dart';

class MainPage1 extends StatelessWidget {
  const MainPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGround1(),
        Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Welcome To Voyage101.com",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: "Search Hotel/Apartment",
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          prefixIcon: Icon(
                            Icons.search_off_rounded,
                            color: Colors.white,
                          ),
                          hintMaxLines: 4,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            rowSearch(),
                            SizedBox(width: 10),
                            rowHotel(),
                            SizedBox(width: 10),
                            rowBed(),
                            SizedBox(width: 10),
                            rowHotel(),
                            SizedBox(width: 10),
                            rowHotel(),
                            SizedBox(width: 10),
                            rowHotel(),
                            SizedBox(width: 10),
                            rowHotel(),
                            SizedBox(width: 10),
                            rowHotel(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Apartments you'll be Interested",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 20,
                              child: Icon(
                                EvaIcons.trending_up_outline,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Cslider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Favorite Hotels Nearby",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 20,
                              child: Icon(
                                EvaIcons.trending_up_outline,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: ListWheelScrollView(
                          itemExtent: 360,
                          diameterRatio: 3.0,
                          squeeze: 1.10,
                          children: [
                            List4(),
                            List1(),
                            List2(),
                            List3(),
                            List4(),
                            List2(),
                            List3(),
                            List4(),
                            List2(),
                            List3(),
                            List1(),
                            List2(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Text(
                            "Show More",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Text(
                            "View All",
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RoomDesign(),
                              ));
                        },
                        child: ListDetails2()),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RoomDesign(),
                            ));
                      },
                      child: ListDetails3(),
                    ),
                    ListDetails1(),
                    ListDetails4(),
                    ListDetails2(),
                    ListDetails1(),
                  ],
                ),
              ),
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
              padding: EdgeInsets.all(20.0),
              tabs: [
                GButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage1(),
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
                        builder: (context) => DetailScreen(),
                      ),
                    );
                  },
                  icon: Icons.bed_outlined,
                  text: 'Rooms',
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
                GButton(
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
