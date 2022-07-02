import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/chatHistory/chatScreen.dart';

import '../base/showCustomSnackbar.dart';

class RectangleCard extends StatelessWidget {
  final String image;
  final String name;
  final String subtitle;
  final String time;
  const RectangleCard(
      {Key? key,
      required this.image,
      required this.name,
      required this.subtitle,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        showCustomSnackBar("Host Exception",
            title: "Chat server configuration failed", bannerColor: Colors.red);
      },
      child: Container(
        padding: EdgeInsets.only(
            left: size.height * 0.03,
            right: size.height * 0.03,
            top: size.height * 0.03,
            bottom: size.height * 0.03),
        decoration: BoxDecoration(
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(image),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name),
                      Text(subtitle),
                    ],
                  ),
                ],
              ),
            ),
            Text(time),
          ],
        ),
      ),
    );
  }
}
