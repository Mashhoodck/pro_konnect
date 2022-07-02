import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/roundedTextFieldWhite.dart';

class ProguideHomeScreen extends StatefulWidget {
  const ProguideHomeScreen({Key? key}) : super(key: key);

  @override
  State<ProguideHomeScreen> createState() => _ProHomeScreenState();
}

class _ProHomeScreenState extends State<ProguideHomeScreen> {
  // List<ProguideResult> proDetails = [
  //   ProguideResult(
  //       image: "assets/images/proguides (3).png",
  //       name: "Proguide1",
  //       country: "india",
  //       specialarea: "Electronics",
  //       projrct: "Drip irrigation",
  //       status: "live"),
  //   ProguideResult(
  //       image: "assets/images/proguides (1).png",
  //       name: "Proguide1",
  //       country: "india",
  //       specialarea: "Electronics",
  //       projrct: "Drip irrigation",
  //       status: "live"),
  //   ProguideResult(
  //       image: "assets/images/proguides (2).png",
  //       name: "Proguide1",
  //       country: "india",
  //       specialarea: "Electronics",
  //       projrct: "Drip irrigation",
  //       status: "live")
  // ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return (Column(
      children: [
        Container(
            color: AppColors.mainColor,
            height: size.height * 0.2,
            child: Container(
              margin: EdgeInsets.only(
                  left: size.width * 0.02,
                  right: size.width * 0.02,
                  top: size.width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hello!",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/bg_login.png'),
                      )
                    ],
                  ),
                  Text(
                    "Nulla blandit leo.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 14, 10, 10),
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            )),
        SizedBox(
          height: 30,
        ),
        // Expanded(
        //     child: Padding(
        //   padding: EdgeInsets.only(
        //       left: size.width * 0.05, right: size.width * 0.05),
        //   child: ListView.separated(
        //       itemBuilder: (context, index) => ListtileCustom(
        //           image: proDetails[index].image,
        //           name: proDetails[index].name,
        //           country: proDetails[index].country,
        //           area: proDetails[index].specialarea,
        //           projects: proDetails[index].projrct,
        //           status: proDetails[index].status),
        //       separatorBuilder: (context, index) => SizedBox(
        //             height: 5,
        //           ),
        //       itemCount: proDetails.length),
        // )),
      ],
    ));
  }
}

class ListtileCustom extends StatelessWidget {
  final String image;
  final String name;
  final String country;
  final String area;
  final String projects;
  final String status;
  const ListtileCustom(
      {Key? key,
      required this.image,
      required this.name,
      required this.country,
      required this.area,
      required this.projects,
      required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: size.height * 0.22,
          padding: EdgeInsets.only(
              left: size.width * 0.02,
              right: size.width * 0.02,
              top: size.height * 0.02,
              bottom: size.height * 0.02),
          width: double.maxFinite,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
              SizedBox(
                width: Dimensions.width20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name :" + name,
                    style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: Dimensions.font16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Text("Country :" + country),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Text(
                    "Area :" + area,
                    overflow: TextOverflow.clip,
                  ),
                  Expanded(
                      child: Text(
                    "Projects :" + projects,
                    style: TextStyle(fontSize: Dimensions.font16),
                  )),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Status :" + status),
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
