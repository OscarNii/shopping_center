// ignore: camel_case_types
import 'package:flutter/material.dart';

// ignore: camel_case_types
class searchField extends StatelessWidget {
  const searchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.clear,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          hintText: "Search for Apartments",
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
          border: InputBorder.none),
    );
  }
}
