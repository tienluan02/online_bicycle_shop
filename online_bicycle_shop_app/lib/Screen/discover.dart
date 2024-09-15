import 'package:flutter/material.dart';
import '../components/bottom_bar.dart';
import '../components/sorting_button.dart';
import '../components/trapezium_container.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/constant.dart';
import '../components/item_container.dart';

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
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
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
                child: const Icon(
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              OverflowBox(
                child: Image.asset(
                  'images/background.png',
                ),
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
                    Row(
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
                    CreatePrimaryContainer(child: Text('thu')),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              CreateItemContainer(child: Text('test')),
                              ItemContainer(
                                itemImagePath: 'images/white_bike.png',
                                itemType: 'Road Bike',
                                itemName: 'PEUGEOT -LR01',
                                itemPrice: '1,999.99',
                              ),
                              ItemContainer(
                                itemImagePath: 'images/black_bike.png',
                                itemType: 'Road Bike',
                                itemName: 'PEUGEOT -LR02',
                                itemPrice: '2,999.99',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 50.0),
                            child: Column(
                              children: [
                                ItemContainer(
                                    itemImagePath: 'images/helmet.png',
                                    itemType: 'Road Helmet',
                                    itemName: 'SMITH -TRADE',
                                    itemPrice: 120.toString(),
                                ),
                                ItemContainer(
                                  itemImagePath: 'images/primary_bike.png',
                                  itemType: 'Road Bike',
                                  itemName: 'PEUGEOT - LR03',
                                  itemPrice: '3,999.99',
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
      bottomNavigationBar: const CustomNavBarCurved(),
    );
  }
}
