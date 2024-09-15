import 'package:flutter/material.dart';

class TrapeziumPrimaryContainer extends StatelessWidget {
  final Widget child;

  TrapeziumPrimaryContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TrapeziumClipper(),
      child: Container(
        width: 400.0,
        height: 260.0,
        child: child,
      ),
    );
  }
}

class TrapeziumClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0); // Top-left point (x10% from left)
    path.lineTo(size.width, 0); // Top-right point (x90% from left)
    path.lineTo(size.width, size.height * 0.82); // Bottom-right point
    path.lineTo(0, size.height); // Bottom-left point
    path.close(); // Closes the path and draws the trapezium

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CreatePrimaryContainer extends StatefulWidget {
  const CreatePrimaryContainer({super.key, required this.child});

  final Widget child;

  @override
  State<CreatePrimaryContainer> createState() => _CreatePrimaryContainerState();
}
class _CreatePrimaryContainerState extends State<CreatePrimaryContainer> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TrapeziumItemClipper(),
      child: RawMaterialButton(
        onPressed: () {},
        child: Container(
          width: 350,
          height: 240,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0x99353F54),
                Color(0x99222834),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 2,
              color: Colors.transparent,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x9910141C),
                blurRadius: 60,
                spreadRadius: 0,
                offset: Offset(0, 20),
              ),
              BoxShadow(
                color: Color(0x803B475F),
                blurRadius: 60,
                spreadRadius: 0,
                offset: Offset(0, -20),
              ),
            ],
          ),
          child: Center(child: Text('Your Content Here'),),
        ),
      ),
    );

  }
}

class TrapeziumItemClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 25.0; // Border radius

    Path path = Path();

    path.moveTo(radius, 0); // Start from the top-left with a radius
    path.lineTo(size.width - radius, 0); // Top-right point before rounding
    path.arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius)); // Top-right corner rounding
    path.lineTo(size.width, size.height * 0.82 - radius); // Right side straight line
    path.arcToPoint(Offset(size.width - radius, size.height * 0.82), radius: Radius.circular(radius)); // Bottom-right corner rounding
    path.lineTo(radius, size.height); // Bottom-left point
    path.arcToPoint(Offset(0, size.height - radius), radius: Radius.circular(radius)); // Bottom-left corner rounding
    path.lineTo(0, radius); // Left side straight line
    path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius)); // Top-left corner rounding

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

