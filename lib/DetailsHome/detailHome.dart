// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:shopping_center/features/auth/controllers.onboarding/screens/login/login.dart';

import 'Animation.dart';
import 'Background.dart';
import 'House1.dart';
import 'ListDetails1.dart';
import 'ListDetails2.dart';
import 'ListDetails4.dart';
import 'Property Room1.dart';
import 'propertyRoom3.dart';
import 'propertyRoom4.dart';
import 'propertyeRoom2.dart';
import 'searchField.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGround1(),
        Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.black,
                pinned: true,
                forceElevated: true,
                elevation: 20,
                title: Center(
                  child: Text(
                    "S H O P CENTER",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/buiding1.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                actions: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.search_off_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.bookmark_add_outlined),
                    ),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: ListBody(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 3, 43, 75),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: searchField(),
                        ),
                        SizedBox(height: 25),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: const Color.fromARGB(255, 3, 43, 75),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.person_add_alt_1,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "All",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )),
                              SizedBox(width: 15),
                              Container(
                                  height: 50,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: const Color.fromARGB(255, 3, 43, 75),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.person_add_alt_1,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Houses",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )),
                              SizedBox(width: 15),
                              Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: const Color.fromARGB(255, 3, 43, 75),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.person_add_alt_1,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Apartments",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: const Color.fromARGB(255, 3, 43, 75),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.person_add_alt_1,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "All",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Stack(
                        children: [
                          House1(),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 58.0, left: 20),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            (context),
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen(),
                                            ),
                                          );
                                        },
                                        child: PropertyRoom1(),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  Stack(
                                    children: [
                                      PropertyRoom2(),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  Stack(
                                    children: [
                                      PropertyRoom3(),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  Stack(
                                    children: [
                                      PropertyRoom4(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Animation1(),
                                  ));
                            },
                            child: ListDetails1()),
                        ListDetails2(),
                        ListDetails4(),
                        ListDetails2(),
                        ListDetails1(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
