import 'package:flutter/material.dart';

class ChatBubbleLeft extends StatelessWidget {
  final String messages;
  final String time;
  const ChatBubbleLeft({Key? key, required this.messages, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: size.width * 0.03,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Text(
                messages,
              ),
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/proguides (2).png"),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              time,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[400],
              ),
            ),
          ],
        )
      ],
    );
  }
}
