// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/mainscreen/editScreen/profileEdit/editBio.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/mainscreen/editScreen/profileEdit/editProfile.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/changePassword.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/intrestsScreen.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/currentPlans.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/refferalCode.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/projectCreate/projectList.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/rateUs.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/socialMedias.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/viewProfile.dart';
import 'package:pro_konnect/proGuides/proguideScreens/profileScreens/activateServices.dart';
import 'package:pro_konnect/proGuides/testing/proChatScreen.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/logOutContainer.dart';
import 'package:pro_konnect/widgets/profileEditItemsList.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:pro_konnect/widgets/profileHeaderContainer.dart';
import 'package:pro_konnect/widgets/rectangleContainer.dart';

import '../profileScreens/bioAndProffesional.dart';

class ProfileScreenPro extends StatelessWidget {
  const ProfileScreenPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileHeaderConiatiner(
          tapBack: () {
            Navigator.pop(context);
          },
        ),

        SizedBox(
          height: Dimensions.height30,
        ),
        SingleChildScrollView(
          child: SizedBox(
            height: size.height * 0.5,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileEditItems(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewProfile()));
                    },
                    title: "View Profile",
                    icon: Icons.visibility,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  ProfileEditItems(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BioAndProfile()));
                    },
                    title: "Bio & Proffessional Links",
                    icon: Icons.menu,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  ProfileEditItems(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Interests()));
                    },
                    title: "Add Specialization",
                    icon: Icons.favorite,
                  ),
                  ProfileEditItems(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Interests()));
                    },
                    title: "Interests",
                    icon: Icons.favorite,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  ProfileEditItems(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangePassword()));
                    },
                    title: "Change Password",
                    icon: Icons.roundabout_left,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  ProfileEditItems(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ActiveService()));
                    },
                    title: "Activate Service",
                    icon: Icons.network_cell_outlined,
                  ),
                  ProfileEditItems(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProguideChat()));
                    },
                    title: "Chat History",
                    icon: Icons.key,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  ProfileEditItems(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SocialMedias()));
                    },
                    title: "Social",
                    icon: Icons.chat,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: size.width * 0.03),
                      child: SizedBox(
                          width: size.width * 0.3, child: LogoutContainer())),
                ],
              ),
            ),
          ),
        ),

        //
      ],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainColor,
      height: Dimensions.height300,
      child: Column(
        children: [
          ProfileHeaderContainer(
              headerItems: CircleAvatar(
            backgroundImage: AssetImage('assets/images/bg_login.png'),
          )),
          SizedBox(
            height: Dimensions.height20,
          ),
          Text(
            "Nulla Blandit leo.",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Dimensions.height80,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: Text(
                  "Bio :-",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          RectangleContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 8,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
