import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.scale, required this.path});

  final double scale;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          child: Transform.scale(scale: scale, child: Image.asset(path)),
        ));
  }
}

class BackGround extends StatelessWidget {
  const BackGround({super.key, required this.upper, required this.leftNumber, required this.path});

  final double upper;
  final double leftNumber;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: upper, left: leftNumber),
      child: Image.asset(path),
    );
  }
}

