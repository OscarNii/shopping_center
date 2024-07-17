import 'package:flutter/material.dart';

class PropertyRoom4 extends StatelessWidget {
  const PropertyRoom4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 420,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: GestureDetector(
          onTap: () {},
          child: GridTile(
            header: const GridTileBar(
              backgroundColor: Colors.black45,
              leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
              title: Text(
                "San Andreas Hotel",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Business Class"),
                  Row(
                    children: [
                      Text("4.5"),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
              trailing: Icon(Icons.menu, color: Colors.white),
            ),
            footer: const GridTileBar(
              backgroundColor: Colors.black45,
              leading: Wrap(
                spacing: 15,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.shower_rounded,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.car_crash, color: Colors.black),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.landslide,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.wifi,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.bathtub_rounded,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            child: Image.asset(
              "assets/building4.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
