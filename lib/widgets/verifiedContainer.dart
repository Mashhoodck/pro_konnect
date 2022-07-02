import 'package:flutter/material.dart';

class VerifiedContainer extends StatelessWidget {
  final String verifiedMessage;
  const VerifiedContainer({Key? key, required this.verifiedMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.5,
        padding: EdgeInsets.only(
            left: size.width * 0.03,
            right: size.width * 0.03,
            bottom: size.width * 0.03,
            top: size.width * 0.03),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(10),
            color: Colors.grey[300]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.verified,
              color: Colors.green,
              size: 50,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              verifiedMessage,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
