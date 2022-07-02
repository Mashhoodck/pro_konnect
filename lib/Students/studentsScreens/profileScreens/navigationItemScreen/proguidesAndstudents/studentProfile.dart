import 'package:flutter/material.dart';

import '../../../../../widgets/profileHeader.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeaderConiatiner(
              tapBack: () {
                // Navigator.pop(context);
              },
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.videocam_sharp,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.redAccent,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.chat,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.blueAccent,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.greenAccent,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Text("Email Address"),
                        Text("Nicola@gmail.com"),
                      ],
                    ),
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pinkAccent),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Text("Phone Number"),
                        Text("0000000"),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[300]),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Text("Country"),
                        Text("India"),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[100]),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Text("Specialization"),
                        Text("Science"),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
