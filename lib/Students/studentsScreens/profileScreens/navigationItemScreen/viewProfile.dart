import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/Students/studentsScreens/homeScreen.dart';
import 'package:pro_konnect/base/customLoader.dart';
import 'package:pro_konnect/controller/authController.dart';
import 'package:pro_konnect/controller/userProfileController.dart';
import 'package:pro_konnect/controller/user_profile_details_controller.dart';
import 'package:pro_konnect/testing/profileScreen.dart';
import 'package:pro_konnect/testing/screensBottomTest.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/backButtonTop.dart';
import 'package:pro_konnect/widgets/profileHeaderContainer.dart';
import 'package:pro_konnect/widgets/roundedBorderTextField.dart';
import 'package:pro_konnect/widgets/viewCircleAvatar.dart';

import '../../../../bottomBarScreens/studentAndProguides.dart';
import '../../../../utils/colors.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  Widget build(BuildContext context) {
    bool _userLoggedin = Get.find<AuthController>().userLoggedin();
    if (_userLoggedin) {
      Get.find<UserProfileDataController>().getUserProfileDetails();
      print("UserLoggedIn");
    }
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeaderContainer(
                headerItems: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: BackButtonTop(
                    backBtnclick: () {
                      Navigator.pop(context);
                    },
                    backArroText: Colors.white,
                    vetorIcon: 'assets/icons/back_arrowsvg.svg',
                  ),
                ),
                SizedBox(
                  height: Dimensions.height30,
                ),
                ViewProfileAvatar(imagePath: 'assets/images/bg_login.png'),
                SizedBox(
                  height: Dimensions.height15,
                ),
                Text(
                  'TestUser',
                  // userProfiledataController.userProfileModel.name
                  //     .toString(),
                  // userProfiledataController.userProfileModel.name!,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: Dimensions.font20,
                ),
                Container(
                  margin: EdgeInsets.only(left: Dimensions.width20),
                  child: Row(
                    children: [
                      Text("Bio :-", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ],
            )),
            SizedBox(
              height: Dimensions.height30,
            ),
            Text(
              "PROFILE",
              style: TextStyle(color: Colors.black),
            ),
            Container(
              child: Column(
                children: [
                  RoundedBorderTextField(
                    writeAccess: true,
                    labelText: "0000000000",
                    textFielHintTitle: "Mobile Number*",
                  ),
                  RoundedBorderTextField(
                    writeAccess: true,
                    labelText: "tempsc@gmail.com",
                    textFielHintTitle: "Email Address *",
                  ),
                  RoundedBorderTextField(
                    writeAccess: true,
                    labelText: "India",
                    textFielHintTitle: "Country *",
                  ),
                  RoundedBorderTextField(
                    writeAccess: true,
                    labelText: "Test",
                    textFielHintTitle: "Interests *",
                  ),
                  RoundedBorderTextField(
                    writeAccess: true,
                    labelText: "Test",
                    textFielHintTitle: "Qualifications *",
                  ),
                  RoundedBorderTextField(
                    writeAccess: true,
                    labelText: "Test",
                    textFielHintTitle: "Current Projects *",
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
