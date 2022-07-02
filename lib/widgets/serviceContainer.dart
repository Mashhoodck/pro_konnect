import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceContainer extends StatelessWidget {
  final String title;
  final Color cardColor;

  const ServiceContainer(
      {Key? key, required this.title, required this.cardColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(20)),
      width: size.width * 0.2,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Center(
        child: Column(
          children: [
            Icon(Icons.room_service),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
