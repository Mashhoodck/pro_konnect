import 'package:flutter/material.dart';

class InterestTags extends StatelessWidget {
  const InterestTags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.2,
      padding:
          EdgeInsets.only(left: size.width * 0.01, right: size.width * 0.01),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Colors.black)),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("data"), Icon(Icons.cancel)],
            ),
          ],
        ),
      ),
    );
  }
}
