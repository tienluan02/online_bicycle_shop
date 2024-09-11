import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  final VoidCallback? onPress;

  CustomIconButton({
    required this.imagePath,
    this.isSelected = false,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isSelected
            ? Colors.blue.withOpacity(0.85)
            : Colors.grey[800]!.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
        border: isSelected
            ? Border.all(color: Colors.blue.withOpacity(0.5), width: 2)
            : null,
      ),
      child: RawMaterialButton(
        onPressed: onPress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
