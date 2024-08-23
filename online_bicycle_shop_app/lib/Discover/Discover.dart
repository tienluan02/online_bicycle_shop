import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF1C3A70),
                  Color(0xFF467BCE),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top search button
                  Align(
                    alignment: Alignment.topRight,
                    child: ClipRRect(
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
                  ),
                  SizedBox(height: 20),
                  // Title
                  Text(
                    'Choose Your Bike',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  // List of cards
                  Expanded(
                    child: ListView(
                      children: [
                        _buildBikeCard(
                          'Road Bike PEUGEOT – LR01',
                          '\$1,999.99',
                          '30% Off',
                          'images/mikkel-bech-yjAFnkLtKY0-unsplash-removebg-preview 3.png',
                        ),
                        _buildBikeCard(
                          'Road Helmet SMITH – Trade',
                          '\$120',
                          '',
                          'images/cobi-krumholz-mZKF19ydEzk-unsplash-removebg-preview 1.png',
                        ),
                        // Add more cards as needed
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Expanded(
        flex: 2,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6.0,
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.directions_bike),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.map),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBikeCard(String title, String price, String discount, String imagePath) {
    return Stack(
      children: [
        // Card container
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade900.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bike image
              Expanded(
                child: Image.asset(
                  imagePath,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
              // Title and price
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    price,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  if (discount.isNotEmpty)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        discount,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        // Favorite icon
        Positioned(
          top: 10,
          right: 10,
          child:
          // MaterialButton(
          //   onPressed: set,
          //   child:
            Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          ),
      ],
    );
  }
}
