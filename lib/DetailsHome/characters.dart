//import 'package:flutter/material.dart';

class Character {
  final String avatar;
  final String title;
  final String description;
  // final String price;
  final int colors;

  Character({
    required this.avatar,
    required this.title,
    required this.description,
    // required this.price,
    required this.colors,
  });
}

final characters = <Character>[
  Character(
    title: "Superior Room",
    description: "Room package is for business treat with Vip Subscrition",
    avatar: "assets/0x0.webp",
    colors: 0xFF238808,
  ),
  Character(
    title: "Single Room",
    description: "Room package is for business treat with Vip Subscrition",
    avatar: "assets/HOXTON_270717_0283.jpg.webp",
    colors: 0xFF354C6C,
  ),
  Character(
    title: "Couple Room",
    description: "Room package is for business treat with Vip Subscrition",
    avatar: "assets/0x0.webp",
    colors: 0xFF26F2B62,
  ),
  Character(
    title: "Vals Room",
    description: "Room package is for business treat with Vip Subscrition",
    avatar: "assets/HOXTON_270717_0283.jpg.webp",
    colors: 0xFF238808,
  ),
  Character(
    title: "Business Class",
    description: "Room package is for business treat with Vip Subscrition",
    avatar: "assets/0x0.webp",
    colors: 0xFF238808,
  ),
  Character(
    title: "Relaxing Room",
    description: "Room package is for business treat with Vip Subscrition",
    avatar: "assets/HOXTON_270717_0283.jpg.webp",
    colors: 0xFF354C6C,
  ),
  Character(
    title: "You & Me Room",
    description: "Room package is for business treat with Vip Subscrition",
    avatar: "assets/0x0.webp",
    colors: 0xFF26F2B62,
  ),
  Character(
    title: "Presidential Room",
    description: "Room package is for business treat with Vip Subscrition",
    avatar: "assets/HOXTON_270717_0283.jpg.webp",
    colors: 0xFF354C6C,
  ),
  Character(
    title: "VIP Room",
    description: "Room package is for business treat with Vip Subscrition",
    avatar: "assets/0x0.webp",
    colors: 0xFF238808,
  ),
  Character(
    title: "Kill Me Room",
    description: "Room package is for couples with Vip Subscrition",
    avatar: "assets/HOXTON_270717_0283.jpg.webp",
    colors: 0xFF354C6C,
  ),
];
