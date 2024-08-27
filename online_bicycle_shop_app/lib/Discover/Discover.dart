import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF242c3b),
        ),
        backgroundColor: Color(0xFF242C3B),
        body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:150,  left: 120),
                child: Image.asset('images/Rectangle 474.png'),
              ),
            ]
        ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF2D355E),
      ),
    );
  }
}
