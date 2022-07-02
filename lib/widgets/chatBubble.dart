import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String messages;
  final String time;
  const ChatBubble({Key? key, required this.messages, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/proguides (1).png"),
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Text(
                messages,
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: size.width * 0.2,
            ),
            Text(
              time,
              textAlign: TextAlign.end,
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
