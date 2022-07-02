import 'dart:math';

import 'package:flutter/material.dart';

class PlanCards extends StatelessWidget {
  final cardText;
  final String offerPrice;
  final String actualPrice;
  final String monthlyPrice;
  final VoidCallback? onClick;

  const PlanCards(
      {Key? key,
      required this.cardText,
      required this.offerPrice,
      required this.actualPrice,
      this.monthlyPrice = "",
      this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.only(
            left: size.width * 0.04,
            right: size.width * 0.04,
            top: size.height * 0.02,
            bottom: size.height * 0.02),
        margin:
            EdgeInsets.only(left: size.width * 0.04, right: size.height * 0.04),
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardText),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 10,
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "\$ " + actualPrice,
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.black38),
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                Text("\$ " + offerPrice)
              ],
            ),
            Text(monthlyPrice)
          ],
        ),
      ),
    );
  }
}
