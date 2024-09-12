import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'constant.dart';
import 'like_button.dart';

class ItemContainer extends StatelessWidget {
  final String itemImagePath;
  final String itemType;
  final String itemName;
  final String itemPrice;

  const ItemContainer(
      {super.key,
      required this.itemImagePath,
      required this.itemType,
      required this.itemName,
      required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 260,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: OverflowBox(
              maxWidth: 400,
              maxHeight: 400,
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: SvgPicture.asset(
                  'images/item_background.svg',
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
            Image.asset(itemImagePath),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  itemType,
                  style: kItemType,
                ),
                Text(
                  itemName,
                  style: kItemName,
                ),
                Text(
                  itemPrice,
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
