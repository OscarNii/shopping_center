import 'package:flutter/material.dart';
import 'package:voyage101/Page/RoomDesign.dart';

class PropertyRoom3 extends StatefulWidget {
  const PropertyRoom3({
    super.key,
  });

  @override
  State<PropertyRoom3> createState() => _PropertyRoom3State();
}

class _PropertyRoom3State extends State<PropertyRoom3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 420,
        width: 300,
        child: GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const RoomDesign(),
            ),
          ),
          child: GridTile(
            header: const GridTileBar(
              backgroundColor: Colors.black45,
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.black),
              ),
              title: Text(
                "Sky Suite Hotel",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Luxury Class"),
                  Row(
                    children: [
                      Text("3.5"),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
              trailing: Icon(Icons.menu),
            ),
            footer: const GridTileBar(
              backgroundColor: Colors.black45,
              leading: Wrap(
                spacing: 15,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.shower_rounded, color: Colors.black),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.car_crash, color: Colors.black),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.landslide, color: Colors.black),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.wifi, color: Colors.black),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.bathtub_rounded, color: Colors.black),
                  ),
                ],
              ),
            ),
            child: Hero(
              tag: "image1",
              child: Image.asset(
                "assets/buiding1.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
