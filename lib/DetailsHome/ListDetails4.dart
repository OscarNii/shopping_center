// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:icons_plus/icons_plus.dart';

class ListDetails4 extends StatelessWidget {
  const ListDetails4({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 88.0, top: 50.0),
          child: Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                )),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: Text(
                    "Tarazzo Hotel",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    "KasoaInWALL Street",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        child: Icon(
                          Icons.add_location_sharp,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Accra-Accra",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "\$320",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Per Day",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(126, 0, 0, 0),
                        Colors.black,
                      ],
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/building5.jpeg"),
                        fit: BoxFit.cover),
                    color: Colors.red),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
