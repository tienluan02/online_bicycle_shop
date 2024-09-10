import 'package:flutter/material.dart';
import '../components/bottom_bar.dart';
import '../components/buttons.dart';
import '../components/trapezium_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                'images/background.png',
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      TrapeziumPrimaryContainer(
                        child: SvgPicture.asset(
                          'images/background_primary_object.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Column(
                            children: [
                              Image.asset('images/primary_bike.png'),
                              const Padding(
                                padding: EdgeInsets.only(right: 180),
                                child: Text(
                                  '30% Off',
                                  style: TextStyle(
                                    color: Color(0xFFA7ABB1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomIconButton(imagePath: 'images/All_button.svg', isSelected: true,),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: CustomIconButton(imagePath: 'images/bike_button.svg', isSelected: false,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 40),
                            child: CustomIconButton(imagePath: 'images/road_button.svg', isSelected: false,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 60),
                            child: CustomIconButton(imagePath: 'images/mountain_button.svg', isSelected: false,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 80),
                            child: CustomIconButton(imagePath: 'images/helmet_button.svg', isSelected: false,),
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBarCurved(),
    );
  }
}
