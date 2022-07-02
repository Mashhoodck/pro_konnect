import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pro_konnect/Students/studentsScreens/homeScreen.dart';
import 'package:pro_konnect/Students/welcomeUserScreen.dart';
import 'package:pro_konnect/bottomBarScreens/studentAndProguides.dart';
import 'package:pro_konnect/proGuides/loginProguide.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/backButtonTop.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';

import '../base/showCustomSnackbar.dart';
import '../testing/profileScreen.dart';

const activeButtonColor = Color(0xFF000467);
const inActiveButtonColor = Colors.white;
const inActiveTextcolor = Colors.black;

enum User { student, proguide }

class ChooseTypeUser extends StatefulWidget {
  @override
  State<ChooseTypeUser> createState() => _ChooseTypeUserState();
}

class _ChooseTypeUserState extends State<ChooseTypeUser> {
  User? selectedUser;

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    String roleUser = selectedUser.toString();

    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          AppColors.rectangle_bg, BlendMode.darken),
                      image: AssetImage('assets/images/bg_select.png'),
                      fit: BoxFit.fill)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 35.h, vertical: 61.h),
                      child: BackButtonTop(
                        backBtnclick: () {
                          Navigator.pop(context);
                        },
                        backArroText: Colors.white,
                        vetorIcon: 'assets/icons/back_arrowsvg.svg',
                      )),
                  SizedBox(
                    height: 29.h,
                  ),
                  Center(
                    child: Text(
                      "I want a guide; Select \"Student\". \n    I provide the guide; Select \n                \"Proguide\".",
                      style: GoogleFonts.dmSans(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          letterSpacing: 0.5),
                    ),
                  ),
                  SizedBox(
                    height: 400.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50.w, right: 50.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonRounded(
                          btnText: "Student",
                          btnWidth: Dimensions.width150,
                          btnHeight: Dimensions.height45,
                          btnTextColor: selectedUser == User.student
                              ? inActiveButtonColor
                              : inActiveTextcolor,
                          btnColor: selectedUser == User.student
                              ? activeButtonColor
                              : inActiveButtonColor,
                          btnClick: () {
                            setState(() {
                              showCustomSnackBar("Student is Selected,",
                                  title: "Student", bannerColor: Colors.green);
                              selectedUser = User.student;
                              isSelected = true;
                            });
                          },
                        ),
                        ButtonRounded(
                          btnText: "Proguide",
                          btnWidth: Dimensions.width150,
                          btnHeight: Dimensions.height45,
                          btnColor: selectedUser == User.proguide
                              ? activeButtonColor
                              : inActiveButtonColor,
                          btnTextColor: selectedUser == User.proguide
                              ? inActiveButtonColor
                              : inActiveTextcolor,
                          btnClick: () {
                            setState(() {
                              showCustomSnackBar("Proguide is Selected,",
                                  title: "Proguide", bannerColor: Colors.green);
                              selectedUser = User.proguide;
                              isSelected = true;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50.w, right: 50.w),
                    child: ButtonRounded(
                      btnText: "Continue",
                      btnColor: AppColors.mainColor,
                      btnWidth: double.maxFinite,
                      btnHeight: Dimensions.height45,
                      btnTextColor: Colors.white,
                      btnClick: () {
                        if (isSelected == false) {
                          showCustomSnackBar(
                            "Select User ,",
                            title: "User",
                            bannerColor: Colors.red,
                          );
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WelcomeUser(
                                        roleUser: roleUser,
                                      )));
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
