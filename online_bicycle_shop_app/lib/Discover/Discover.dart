import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242C3B),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 120),
              child: Image.asset('images/Rectangle 474.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Stack(
                      children: [
                    Image.asset('images/background.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 100.0, left: 30),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                                child: Image.asset('images/Electric%20Bicycle.I05 2.png'),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                  child: Text(
                                      '30% Off',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xFFA7ABB1),
                                  ),)
                              ),
                            ],
                          ),
                        )
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF2D355E),
      ),
    );
  }
}
