// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Background.dart';
import 'characters.dart';

const itemSize = 170.0;

class Animation1 extends StatefulWidget {
  const Animation1({super.key});

  @override
  State<Animation1> createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> {
  final scrollController = ScrollController();
  void onListen() {
    setState(() {});
  }

  @override
  void initState() {
    scrollController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(onListen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGround1(),
        Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          // backgroundColor: Colors.transparent,
          // appBar: AppBar(
          //   title: const Text("Animation"),
          // ),
          body: CustomScrollView(
            controller: scrollController,
            slivers: <Widget>[
              // SliverToBoxAdapter(
              //   child: Placeholder(
              //     fallbackHeight: 200.0,
              //   ),
              // ),
              SliverAppBar(
                automaticallyImplyLeading: true,
                // leading: Icon(
                //   Icons.arrow_back_ios_rounded,
                //   color: Colors.white,
                //   size: 15,
                // ),
                backgroundColor: Colors.transparent,
                pinned: true,
                forceElevated: true,
                elevation: 10,
                title: Center(
                    // child: Text(
                    //   "ROOMS AVAILABLE",
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    ),
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/building4.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                actions: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.search_off_outlined),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.bookmark_add_outlined),
                    ),
                  ),
                ],
              ),
              SliverAppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Center(
                  child: Text(
                    "ROOMS IN THE HOTEL",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: const SizedBox(height: 20),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final character = characters[index];
                    final itemPositionOffset = index * itemSize;
                    final difference =
                        scrollController.offset - itemPositionOffset;
                    final percent = 1.0 - (difference / itemSize);
                    double opacity = percent;
                    double scale = percent;

                    if (opacity > 1.0) opacity = 1.0;
                    if (opacity < 0.0) opacity = 0.0;
                    if (percent > 1.0) scale = 1.0;

                    return Opacity(
                      opacity: opacity,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()..scale(scale, 1.0),
                        child: Card(
                          color: Color(character.colors),
                          child: SizedBox(
                            height: itemSize,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          character.title,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                        Text(
                                          character.description,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      character.avatar,
                                      scale: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: characters.length,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

// class MyCustomHeader extends SliverPersistentHeaderDelegate {
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Text(
//       "My Characters",
//       style: TextStyle(color: Colors.white),
//     );
//   }

//   @override
//   double get maxExtent => 100.0;

//   @override
//   double get minExtent => 100.0;

//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
// }
