import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

    // Define the trapezium points
    path.moveTo(0, 0); // Top-left point (x10% from left)
    path.lineTo(size.width, 0); // Top-right point (x90% from left)
    path.lineTo(size.width, size.height * 0.82); // Bottom-right point
    path.lineTo(0, size.height); // Bottom-left point
    path.close(); // Closes the path and draws the trapezium

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // If the clipping path doesn't change, no need to reclip
  }
}

class TrapeziumButtonContainer extends StatelessWidget {
  final Widget child;
  const TrapeziumButtonContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TrapeziumClipper(),
      child: Container(
        width: double.infinity,
        height: 100,
        child: child,
      ),
    );
  }
}

class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 260,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: OverflowBox(
          maxWidth: 400,
          maxHeight: 400,
          child: SvgPicture.asset(
            'images/item_background.svg',
          ),
        ),
      ),
    );
  }
}

class TrapeziumItemClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Define the trapezium points
    path.moveTo(0, 300 * 0.25); // Top-left point (x10% from left)
    path.lineTo(size.width * 0.83, 300 * 0.15); // Top-right point (x90% from left)
    path.lineTo(size.width * 0.83, 310 * 0.9); // Bottom-right point
    path.lineTo(0, 300 * 0.98); // Bottom-left point
    path.close(); // Closes the path and draws the trapezium

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // If the clipping path doesn't change, no need to reclip
  }
}

