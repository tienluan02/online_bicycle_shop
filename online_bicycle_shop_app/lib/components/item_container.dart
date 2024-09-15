import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'constant.dart';
import 'like_button.dart';

class ItemContainer extends StatefulWidget {

  const ItemContainer({super.key,
    required this.itemImagePath,
    required this.itemType,
    required this.itemName,
    required this.itemPrice});

  final String itemImagePath;
  final String itemType;
  final String itemName;
  final String itemPrice;

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 260,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: RawMaterialButton(
              onPressed: () {
                setState(() {

                });
              },
              child: OverflowBox(
                maxWidth: 400,
                maxHeight: 400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SvgPicture.asset(
                    'images/item_background.svg',
                  ),
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(left: 95, top: 10),
                child: CustomLikeButton()),
            Image.asset(widget.itemImagePath),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  widget.itemType,
                  style: kItemType,
                ),
                Text(
                  widget.itemName,
                  style: kItemName,
                ),
                Text(
                  widget.itemPrice,
                  style: kItemPrize,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class CreateItemContainer extends StatefulWidget {
  const CreateItemContainer({super.key, required this.child});

  final Widget child;

  @override
  State<CreateItemContainer> createState() => _CreateItemContainerState();
}
class _CreateItemContainerState extends State<CreateItemContainer> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TrapeziumItemClipper(),
      child: Container(
        width: 165,
          height: 260,
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
        child: Center(child: widget.child),
      ),
    );
  }
}

class TrapeziumItemClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20.0; // Border radius

    Path path = Path();

    path.moveTo(radius, size.height * 0.07); // Start from the top-left with a radius
    path.lineTo(size.width - radius, 0); // Top-right point before rounding
    path.arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius)); // Top-right corner rounding
    path.lineTo(size.width, size.height * 0.93 - radius); // Right side straight line
    path.arcToPoint(Offset(size.width - radius, size.height * 0.93), radius: Radius.circular(radius)); // Bottom-right corner rounding
    path.lineTo(radius, size.height); // Bottom-left point
    path.arcToPoint(Offset(0, size.height - radius), radius: Radius.circular(radius)); // Bottom-left corner rounding
    path.lineTo(0, radius+ size.height * 0.07); // Left side straight line
    path.arcToPoint(Offset(radius, size.height * 0.07), radius: Radius.circular(radius)); // Top-left corner rounding

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

