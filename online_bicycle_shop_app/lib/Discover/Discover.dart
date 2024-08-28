import 'package:flutter/material.dart';
import 'Buttons.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242C3B),
      body: SafeArea(
        child: Stack(
          children: [
            BackGround(upper: 150, leftNumber: 120, path: 'images/Rectangle 474.png'),
            BackGround(upper: 0, leftNumber: 10, path: 'images/background.png'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
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
                  Container(
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0, left: 25),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Image.asset(
                                  'images/Electric%20Bicycle.I05 2.png'),
                            ),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  '30% Off',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xFFA7ABB1),
                                  ),
                                ),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                  Row(
                    children: [
                      Buttons(scale: 1.7,marginNumber: 0, path: 'images/Allbutton.png',),
                      Buttons(scale: 1.7,marginNumber: 25, path: 'images/BikeButton.png',),
                      Buttons(scale: 1.7,marginNumber: 50, path: 'images/Road.png',),
                      Buttons(scale: 1.2,marginNumber: 75, path: 'images/Mountain.png'),
                      Buttons(scale: 1.2, marginNumber: 100, path: 'images/HelmetButton.png'),
                    ],
                  ),
                  // Image.asset('images/Rectangle 166.png'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Color(0xFF2D355E),
        // child: SafeArea(
        //   child: BottomNavigationBar(
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.directions_bike),
        //         label: '',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.map),
        //         label: '',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.shopping_cart),
        //         label: '',
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}