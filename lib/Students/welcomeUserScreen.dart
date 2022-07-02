// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:pro_konnect/Students/choosetype.dart';
import 'package:pro_konnect/Students/studentsScreens/homeScreen.dart';
import 'package:pro_konnect/Students/studentsScreens/loginRegistration/refferalCodeScreen.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/changePassword.dart';
import 'package:pro_konnect/base/customLoader.dart';
import 'package:pro_konnect/controller/authController.dart';
import 'package:pro_konnect/controller/proguideAuthController.dart';
import 'package:pro_konnect/model/responseModel.dart';
import 'package:pro_konnect/testing/test_twohome.dart';
import 'package:pro_konnect/utils/appConstants.dart';

import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/backButtonTop.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';

import 'package:pro_konnect/widgets/roundedTextFieldWhite.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../base/showCustomSnackbar.dart';

import '../bottomBarScreens/persist_botttombar.dart';
import '../main.dart';

import '../proGuides/testing/screensBottomTest.dart';
import '../testing/screensBottomTest.dart';

const activeButtonColor = Color(0xFF000467);
const inActiveButtonColor = Colors.white;
const inActiveTextcolor = Colors.black;

enum User { student, proguide }

class WelcomeUser extends StatefulWidget {
  final String? roleUser;
  const WelcomeUser({
    this.roleUser,
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomeUser> createState() => _WelcomeUserState();
}

class _WelcomeUserState extends State<WelcomeUser> {
  bool isVisible = true;
  User? selectedUser;
  String student = User.student.toString();
  String proguide = User.proguide.toString();
  bool isSelected = false;
  Color btnColor = Colors.black;
  late String usrerRole;

  @override
  Widget build(BuildContext context) {
    SharedPreferences sharedPreferences;
    late String role = AppConstants.selectedUser;

    String student = User.student.toString();
    String proguide = User.proguide.toString();
    String Selectedrole = selectedUser.toString();

    var studentIdController = TextEditingController();
    var PasswordController = TextEditingController();

    void _prosignIn(ProguideAuthController proAuthController) {
      String proguideID = studentIdController.text.trim();

      String password = PasswordController.text.trim();

      if (proguideID.isEmpty) {
        showCustomSnackBar(
          "Proguide ID is required ,",
          title: "proguideID",
          bannerColor: Colors.red,
        );
      } else if (password.length < 6) {
        showCustomSnackBar(
          "Passowrd can not less than six character ,",
          title: "Password",
          bannerColor: Colors.red,
        );
      } else {
        proAuthController.login(proguideID, password).then((status) {
          print(status);
          if (status.isSuccess) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PersistBottombarPro()));
          } else {
            showCustomSnackBar(status.message);
          }
        });
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => PersistBottombarPro()));
      }
      print("userROle heremest ${AppConstants.selectedUser}");
    }

    void _signIn(AuthController authController) {
      String studentId = studentIdController.text.trim();

      String password = PasswordController.text.trim();

      if (studentId.isEmpty) {
        showCustomSnackBar(
          "Student ID is required ,",
          title: "StudentId",
          bannerColor: Colors.red,
        );
      } else if (password.length < 6) {
        showCustomSnackBar(
          "Password can not less than six character ,",
          title: "Password",
          bannerColor: Colors.red,
        );
      } else {
        authController.login(studentId, password).then((status) {
          print(status);
          if (status.isSuccess) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PersistBottombar()));
          } else {
            showCustomSnackBar(status.message);
          }
        });
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => PersistBottombarPro()));
      }
    }

    return SafeArea(
      child: Scaffold(
          body: Selectedrole == student
              ? GetBuilder<AuthController>(builder: (_authController) {
                  return Container(
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  AppColors.rectangle_bg, BlendMode.darken),
                              image: AssetImage('assets/images/bg_login.png'),
                              fit: BoxFit.fill)),
                      child: !_authController.isLoading
                          ? SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 35.h, vertical: 61.h),
                                      child: BackButtonTop(
                                        backBtnclick: () {
                                          Navigator.pop(context);
                                        },
                                        vetorIcon:
                                            'assets/icons/back_arrowsvg.svg',
                                        backArroText: Colors.white,
                                      )),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: Dimensions.width10,
                                      right: Dimensions.width10,
                                      top: Dimensions.height10,
                                    ),
                                    child: Center(
                                        child: Text(
                                      "WELCOME!",
                                      style: GoogleFonts.dmSans(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40.sp,
                                              fontWeight: FontWeight.w500)),
                                    )),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: Dimensions.width10,
                                        right: Dimensions.width10,
                                        top: Dimensions.height10,
                                        bottom: Dimensions.height10),
                                    width: double.maxFinite,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ButtonRounded(
                                          btnText: "Student",
                                          btnTextColor:
                                              selectedUser == User.student
                                                  ? inActiveButtonColor
                                                  : inActiveTextcolor,
                                          btnColor: selectedUser == User.student
                                              ? activeButtonColor
                                              : inActiveButtonColor,
                                          btnWidth: Dimensions.width_150,
                                          btnClick: () {
                                            setState(() {
                                              showCustomSnackBar(
                                                  "Student is Selected,",
                                                  title: "Student",
                                                  bannerColor: Colors.green);
                                              selectedUser = User.student;
                                              isSelected = true;
                                            });
                                          },
                                        ),
                                        ButtonRounded(
                                          btnText: "Proguide",
                                          btnWidth: Dimensions.width_150,
                                          btnColor:
                                              selectedUser == User.proguide
                                                  ? activeButtonColor
                                                  : inActiveButtonColor,
                                          btnTextColor:
                                              selectedUser == User.proguide
                                                  ? inActiveButtonColor
                                                  : inActiveTextcolor,
                                          btnClick: () {
                                            setState(() {
                                              showCustomSnackBar(
                                                  "Proguide is Selected,",
                                                  title: "Proguide",
                                                  bannerColor: Colors.green);
                                              selectedUser = User.proguide;
                                              isSelected = true;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 120.h,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: Dimensions.width50,
                                        right: Dimensions.width50),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.only(
                                                left: Dimensions.width20),
                                            child: Text(
                                              Selectedrole == student
                                                  ? "StudentID"
                                                  : "ProguideID",
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            )),
                                        SizedBox(
                                          height: Dimensions.height10,
                                        ),
                                        RoundedWhiteTexhField(
                                          textController: studentIdController,
                                        ),
                                        SizedBox(
                                          height: Dimensions.height30,
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(
                                                left: Dimensions.width20),
                                            child: Text(
                                              "Password *",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                        SizedBox(
                                          height: Dimensions.height10,
                                        ),
                                        RoundedWhiteTexhField(
                                          textController: PasswordController,
                                          suffix: GestureDetector(
                                              onTap: () {},
                                              child: Icon(Icons.visibility)),
                                          obScrText: isVisible,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 10),
                                          child: SizedBox(
                                            width: double.maxFinite,
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ChangePassword()));
                                              },
                                              child: Text(
                                                "Forgot Password ?",
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: Dimensions.height45,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.w, right: 20.w),
                                          child: ButtonRounded(
                                            btnText: "Login",
                                            btnWidth: double.maxFinite,
                                            btnColor: AppColors.mainColor,
                                            btnTextColor: Color.fromARGB(
                                                255, 255, 255, 255),
                                            btnHeight: Dimensions.height45,
                                            btnClick: () {
                                              _signIn(_authController);
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: Dimensions.height10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Don't have an account ?",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            GestureDetector(
                                              child: Text(
                                                "Register",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            RefferalScreen()));
                                              },
                                            ),
                                            SizedBox(
                                              height: Dimensions.height80,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          : CustomLoader());
                })
              : GetBuilder<ProguideAuthController>(builder: (_authController) {
                  return Container(
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  AppColors.rectangle_bg, BlendMode.darken),
                              image: AssetImage('assets/images/bg_login.png'),
                              fit: BoxFit.fill)),
                      child: !_authController.isLoading
                          ? SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 35.h, vertical: 61.h),
                                      child: BackButtonTop(
                                        backBtnclick: () {
                                          Navigator.pop(context);
                                        },
                                        vetorIcon:
                                            'assets/icons/back_arrowsvg.svg',
                                        backArroText: Colors.white,
                                      )),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: Dimensions.width10,
                                      right: Dimensions.width10,
                                      top: Dimensions.height10,
                                    ),
                                    child: Center(
                                        child: Text(
                                      "WELCOME!",
                                      style: GoogleFonts.dmSans(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40.sp,
                                              fontWeight: FontWeight.w500)),
                                    )),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: Dimensions.width10,
                                        right: Dimensions.width10,
                                        top: Dimensions.height10,
                                        bottom: Dimensions.height10),
                                    width: double.maxFinite,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ButtonRounded(
                                          btnText: "Student",
                                          btnTextColor:
                                              selectedUser == User.student
                                                  ? inActiveButtonColor
                                                  : inActiveTextcolor,
                                          btnColor: selectedUser == User.student
                                              ? activeButtonColor
                                              : inActiveButtonColor,
                                          btnWidth: Dimensions.width_150,
                                          btnClick: () {
                                            setState(() {
                                              showCustomSnackBar(
                                                  "Sudent is Selected,",
                                                  title: "Student",
                                                  bannerColor: Colors.green);
                                              selectedUser = User.student;
                                              isSelected = true;
                                            });
                                          },
                                        ),
                                        ButtonRounded(
                                          btnText: "Proguide",
                                          btnWidth: Dimensions.width_150,
                                          btnColor:
                                              selectedUser == User.proguide
                                                  ? activeButtonColor
                                                  : inActiveButtonColor,
                                          btnTextColor:
                                              selectedUser == User.proguide
                                                  ? inActiveButtonColor
                                                  : inActiveTextcolor,
                                          btnClick: () {
                                            setState(() {
                                              showCustomSnackBar(
                                                  "Proguide is Selected,",
                                                  title: "Proguide",
                                                  bannerColor: Colors.green);
                                              selectedUser = User.proguide;
                                              isSelected = true;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 120.h,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: Dimensions.width50,
                                        right: Dimensions.width50),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.only(
                                                left: Dimensions.width20),
                                            child: Text(
                                              Selectedrole == student
                                                  ? "StudentID *"
                                                  : "ProguideID *",
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            )),
                                        SizedBox(
                                          height: Dimensions.height10,
                                        ),
                                        RoundedWhiteTexhField(
                                          textController: studentIdController,
                                        ),
                                        SizedBox(
                                          height: Dimensions.height30,
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(
                                                left: Dimensions.width20),
                                            child: Text(
                                              "Password *",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                        SizedBox(
                                          height: Dimensions.height10,
                                        ),
                                        RoundedWhiteTexhField(
                                          suffix: GestureDetector(
                                              onTap: () {
                                                print("clicked");
                                              },
                                              child: Icon(Icons.visibility)),
                                          obScrText: isVisible,
                                          textController: PasswordController,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 10),
                                          child: SizedBox(
                                            width: double.maxFinite,
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            PersistBottombarPro()));
                                              },
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              ChangePassword()));
                                                },
                                                child: Text(
                                                  "Forgot Password ?",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: Dimensions.height45,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.w, right: 20.w),
                                          child: ButtonRounded(
                                            btnText: "Login",
                                            btnWidth: double.maxFinite,
                                            btnColor: AppColors.mainColor,
                                            btnTextColor: Colors.white,
                                            btnHeight: Dimensions.height45,
                                            btnClick: () {
                                              _prosignIn(_authController);
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: Dimensions.height10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Don't have an account ?",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            GestureDetector(
                                              child: Text(
                                                "Register",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            RefferalScreen()));
                                              },
                                            ),
                                            SizedBox(
                                              height: Dimensions.height80,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          : CustomLoader());
                })),
    );
  }
}
