import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/controller/authController.dart';
import 'package:pro_konnect/controller/proguideListController.dart';
import 'package:pro_konnect/utils/appConstants.dart';

import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/customSearchBar.dart';
import 'package:pro_konnect/widgets/roundedTextFieldWhite.dart';

import '../listData/dataHomeScreen.dart';

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({Key? key}) : super(key: key);

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  List<ProguideResult> proDetails = [
    ProguideResult(
        image: "assets/images/proguides (3).png",
        name: "Proguide1",
        country: "india",
        specialarea: "Electronics",
        projrct: "Drip irrigation",
        status: "live"),
    ProguideResult(
        image: "assets/images/proguides (1).png",
        name: "Proguide1",
        country: "india",
        specialarea: "Electronics",
        projrct: "Drip irrigation",
        status: "live"),
    ProguideResult(
        image: "assets/images/proguides (2).png",
        name: "Proguide1",
        country: "india",
        specialarea: "Electronics",
        projrct: "Drip irrigation",
        status: "live")
  ];
  @override
  Widget build(BuildContext context) {
    print(AppConstants.selectedUser);
    bool _userLoggedIn = Get.find<AuthController>().userLoggedin();
    if (_userLoggedIn) {
      Get.find<ProguideListController>().getProguideList();
    }
    var size = MediaQuery.of(context).size;
    return GetBuilder<ProguideListController>(
        builder: (proguidelistController) {
      return Column(
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
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hello!",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/proguides (1).png'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "TestUser",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child:
                SearchBarRounded(prefix: Icons.search, hintText: "Search Here"),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Student",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox()
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.05, right: size.width * 0.05),
            child: ListView.separated(
                itemBuilder: (context, index) => ListtileCustom(
                    image: proDetails[index].image,
                    name: proDetails[index].name,
                    country: proDetails[index].country,
                    area: proDetails[index].specialarea,
                    projects: proDetails[index].projrct,
                    status: proDetails[index].status),
                separatorBuilder: (context, index) => SizedBox(
                      height: 5,
                    ),
                itemCount: proDetails.length),
          )),
        ],
      );
    });
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
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
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
