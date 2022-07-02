import 'package:flutter/material.dart';

class VirtualCardsList extends StatelessWidget {
  final Color cardColor;
  const VirtualCardsList(
      {Key? key, required this.size, required this.cardColor})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: size.width * 0.6,
          padding: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
              top: size.height * 0.02,
              bottom: size.height * 0.02),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cardColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                          child: Container(
                              width: size.width * 0.05,
                              height: size.width * 0.05,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black))),
                      Positioned(
                          right: -15,
                          child: Container(
                              width: size.width * 0.05,
                              height: size.width * 0.05,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white))),
                    ],
                  ),
                ],
              ),
              Text(
                "**** **** **** 5463",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("\$ 52789"), Text("08 / 26")],
              )
            ],
          ),
        ),
      ],
    );
  }
}
