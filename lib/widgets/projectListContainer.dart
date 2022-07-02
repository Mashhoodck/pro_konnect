import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';

class ListContainerWidget extends StatelessWidget {
  final String profilePath;
  final String titleGuide;
  final String nameProguide;
  final String contry;
  final String specialisation;
  final String status;

  const ListContainerWidget({
    Key? key,
    required this.profilePath,
    required this.titleGuide,
    required this.nameProguide,
    required this.contry,
    required this.specialisation,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.30,
          padding: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width20,
              top: Dimensions.height20,
              bottom: Dimensions.height20),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profilePath),
              ),
              SizedBox(
                width: Dimensions.width20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleGuide,
                    style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Text("Name of proguide : " + nameProguide),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Text("Country : " + contry),
                  Text("Specialization : " + specialisation),
                  SizedBox(
                    height: Dimensions.height15,
                  ),
                  Text("Status : " + status),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Start Date : "),
                      SizedBox(
                        width: 50,
                      ),
                      Text("End Date : ")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
