import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/chatBubble.dart';
import 'package:pro_konnect/widgets/chatBubbleLeft.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          toolbarHeight: 100,
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/proguides (1).png"),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name"),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                "****@gamail.com",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(left: 1, right: 5),
              child: Row(
                children: [
                  Icon(Icons.videocam),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Icon(Icons.call),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Icon(Icons.menu)
                ],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: size.height * 0.03),
            Center(
              child: Text(
                "20 march 2020",
                style: TextStyle(color: Colors.grey[400]),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.03, right: size.width * 0.03),
                child: Column(
                  children: [
                    ChatBubble(
                      messages: "Hello",
                      time: "13.5",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        ChatBubbleLeft(
                          messages: "Hello",
                          time: "13.5",
                        ),
                      ],
                    ),
                    ChatBubble(
                      messages: "Hello",
                      time: "13.5",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        ChatBubbleLeft(
                          messages: "Hello",
                          time: "13.5",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/proguides (1).png"),
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              // SvgPicture.asset('assets/icons/sound-waves.svg'),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Text(
                                "0.07",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 10),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.02, right: size.width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.add),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  Container(
                                    width: size.width * 0.50,
                                    child: TextField(
                                      decoration:
                                          InputDecoration(hintText: "Message"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.mic),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  Icon(Icons.camera_alt_rounded),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  Icon(Icons.attach_file)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.send),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
