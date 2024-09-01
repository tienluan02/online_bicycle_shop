import 'package:flutter/material.dart';
import 'Buttons.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242C3B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Choose Your Bike',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              Image.asset(
                'images/Rectangle 474.png',
                fit: BoxFit.cover,
              ),
              SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/backgroundcutted.png',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            left: 120,
                            child: Transform.scale(
                              scale: 2.2,
                              child: Image.asset(
                                'images/Electric%20Bicycle.I05 2.png',
                                // Replace with actual image link
                                width: 150,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 215,
                            left: 50,
                            child: Transform.scale(
                              scale: 1.3,
                              child: Text(
                                '30% Off',
                                style: TextStyle(
                                  color: Color(0xFFA7ABB1),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [Expanded(
                              child: Transform.translate(
                                offset: Offset(0, 40), // Shift the first button down
                                child: Buttons(
                                  scale: 1.35,
                                  path: 'images/Allbutton.png',
                                ),
                              ),
                            ), Expanded(
                              child: Transform.translate(
                                offset: Offset(0, 30), // Shift the second button up slightly
                                child: Buttons(
                                  scale: 1.35,
                                  path: 'images/BikeButton.png',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Transform.translate(
                                offset: Offset(0, 20), // Shift the third button up more
                                child: Buttons(
                                  scale: 1.35,
                                  path: 'images/Road.png',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Transform.translate(
                                offset: Offset(0, 10), // Shift the fourth button up even more
                                child: Buttons(
                                  scale: 1,
                                  path: 'images/Mountain.png',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Transform.translate(
                                offset: Offset(0, 0), // No shift for the fifth button
                                child: Buttons(
                                  scale: 1,
                                  path: 'images/HelmetButton.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ]
                    // Stack(
                    //   children: [
                    //     BackGround(
                    //         upper: 150, leftNumber: 120, path: 'images/Rectangle 474.png'),
                    //     BackGround(upper: 0, leftNumber: 10, path: 'images/background.png'),
                    //     Container(
                    //       margin: EdgeInsets.only(top: 400, left: 20),
                    //       child: Row(
                    //         children: [
                    //           Expanded(
                    //               child: Stack(children: [
                    //             ClipRRect(
                    //               child: Image.asset('images/Rectangle 166.png'),
                    //             ),
                    //                 Column(
                    //                   children: [
                    //                     Image.asset('images/robert-bye-tG36rvCeqng-unsplash-removebg-preview 5.png'),
                    //
                    //                   ],
                    //                 )
                    //           ])),
                    //           Expanded(
                    //               child: Stack(children: [
                    //             Container(
                    //               margin: EdgeInsets.only(bottom: 100),
                    //               child: Image.asset('images/Rectangle 167.png'),
                    //             ),
                    //           ]))
                    //         ],
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.all(16.0),
                    //       child: Column(
                    //         children: [
                    //           Container(
                    //             child: Stack(children: [
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 50.0, left: 25),
                    //                 child: Column(
                    //                   children: [
                    //                     Padding(
                    //                       padding: const EdgeInsets.only(right: 30.0),
                    //                       child: Image.asset(
                    //                           'images/Electric%20Bicycle.I05 2.png'),
                    //                     ),
                    //                     Align(
                    //                       alignment: Alignment.bottomLeft,
                    //                       child: Text(
                    //                         '30% Off',
                    //                         style: TextStyle(
                    //                           fontWeight: FontWeight.bold,
                    //                           fontSize: 25,
                    //                           color: Color(0xFFA7ABB1),
                    //                         ),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               )
                    //             ]),
                    //           ),
                    //           Row(
                    //             children: [
                    //               Buttons(
                    //                 scale: 1.7,
                    //                 marginNumber: 0,
                    //                 path: 'images/Allbutton.png',
                    //               ),
                    //               Buttons(
                    //                 scale: 1.7,
                    //                 marginNumber: 25,
                    //                 path: 'images/BikeButton.png',
                    //               ),
                    //               Buttons(
                    //                 scale: 1.7,
                    //                 marginNumber: 50,
                    //                 path: 'images/Road.png',
                    //               ),
                    //               Buttons(
                    //                   scale: 1.2,
                    //                   marginNumber: 75,
                    //                   path: 'images/Mountain.png'),
                    //               Buttons(
                    //                   scale: 1.2,
                    //                   marginNumber: 100,
                    //                   path: 'images/HelmetButton.png'),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Color(0xFF2D355E),
        // child: SafeArea(
        //   child: BottomNavigationBar(
        //     items: [
        //       // BottomNavigationBarItem(
        //       //   icon: Icon(Icons.directions_bike),
        //       //   label: '',
        //       // ),
        //       // BottomNavigationBarItem(
        //       //   icon: Icon(Icons.map),
        //       //   label: '',
        //       // ),
        //       // BottomNavigationBarItem(
        //       //   icon: Icon(Icons.shopping_cart),
        //       //   label: '',
        //       // ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

class RectangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double topCut = size.height * 0.15; // Clip out the top 15% of the image
    double bottomCut =
        size.height * 0.15; // Clip out the bottom 15% of the image

    // Customize the clip path to match the desired rectangle area
    path.addRRect(RRect.fromRectAndRadius(
      Rect.fromLTRB(0, topCut, size.width, size.height - bottomCut),
      Radius.circular(20),
    ));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
