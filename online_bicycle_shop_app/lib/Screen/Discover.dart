import 'package:flutter/material.dart';
import '../components/bottom_bar.dart';
import '../components/sorting_button.dart';
import '../components/trapezium_container.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/like_button.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List<bool> buttonStates = [true, false, false, false, false];

  void selectedButton(int i, List<bool> buttonStates) {
    // Set all buttons to false
    for (int j = 0; j < buttonStates.length; j++) {
      buttonStates[j] = false;
    }
    // Set the selected button to true
    if (i >= 0 && i < buttonStates.length) {
      buttonStates[i] = true;
    }
  }

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
              SingleChildScrollView(
                child: Column(
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
                          CustomIconButton(
                            imagePath: 'images/All_button.svg',
                            isSelected: buttonStates[0],
                            onPress: () {
                              setState(() {
                                selectedButton(0, buttonStates);
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: CustomIconButton(
                                imagePath: 'images/bike_button.svg',
                                isSelected: buttonStates[1],
                                onPress: () {
                                  setState(() {
                                    selectedButton(1, buttonStates);
                                  });
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 40),
                            child: CustomIconButton(
                                imagePath: 'images/road_button.svg',
                                isSelected: buttonStates[2],
                                onPress: () {
                                  setState(() {
                                    selectedButton(2, buttonStates);
                                  });
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 60),
                            child: CustomIconButton(
                              imagePath: 'images/mountain_button.svg',
                              isSelected: buttonStates[3],
                              onPress: () {
                                setState(() {
                                  selectedButton(3, buttonStates);
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 80),
                            child: CustomIconButton(
                              imagePath: 'images/helmet_button.svg',
                              isSelected: buttonStates[4],
                              onPress: () {
                                setState(() {
                                  selectedButton(4, buttonStates);
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ItemContainer(),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 60, top: 10),
                                          child: CustomLikeButton()),
                                    ],
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  ItemContainer(),
                                  Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 60, top: 10),
                                          child: CustomLikeButton()),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 50.0),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    ItemContainer(),
                                    Column(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 60, top: 10),
                                            child: CustomLikeButton()),
                                      ],
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    ItemContainer(),
                                    Column(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 60, top: 10),
                                            child: CustomLikeButton()),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBarCurved(),
    );
  }
}
