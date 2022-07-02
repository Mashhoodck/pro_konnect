import 'package:flutter/material.dart';

import '../../widgets/profileHeader.dart';

class ProguideHome extends StatelessWidget {
  const ProguideHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeaderConiatiner(
                tapBack: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.height * 0.03,
                    right: size.height * 0.03,
                    top: size.height * 0.05),
                child: Column(
                  children: [
                    Text(
                      "Loren Ipsum ContentLoren Ipsum ContentLoren Ipsum ContentLoren Ipsum Content Loren Ipsum ContentLoren Ipsum ContentLoren Ipsum Content Loren Ipsum Content Loren Ipsum Content",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 1),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                        "Loren Ipsum ContentLoren Ipsum ContentLoren Ipsum ContentLoren Ipsum Content Loren Ipsum ContentLoren Ipsum ContentLoren Ipsum Content Loren Ipsum Content Loren Ipsum Content",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, letterSpacing: 1)),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                        "Loren Ipsum ContentLoren Ipsum ContentLoren Ipsum ContentLoren Ipsum Content Loren Ipsum ContentLoren Ipsum ContentLoren Ipsum Content Loren Ipsum Content Loren Ipsum Content",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, letterSpacing: 1)),
                    Text(
                        "Loren Ipsum ContentLoren Ipsum ContentLoren Ipsum ContentLoren Ipsum Content Loren Ipsum ContentLoren Ipsum ContentLoren Ipsum Content Loren Ipsum Content Loren Ipsum Content",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, letterSpacing: 1)),
                    Text(
                        "Loren Ipsum ContentLoren Ipsum ContentLoren Ipsum ContentLoren Ipsum Content Loren Ipsum ContentLoren Ipsum ContentLoren Ipsum Content Loren Ipsum Content Loren Ipsum Content",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, letterSpacing: 1)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
