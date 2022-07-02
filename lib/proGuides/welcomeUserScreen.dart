// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:pro_konnect/Students/choosetype.dart';
// import 'package:pro_konnect/Students/studentsScreens/homeScreen.dart';
// import 'package:pro_konnect/Students/studentsScreens/loginRegistration/refferalCodeScreen.dart';
// import 'package:pro_konnect/proGuides/testing/screensBottomTest.dart';
// import 'package:pro_konnect/testing/test_twohome.dart';

// import 'package:pro_konnect/utils/colors.dart';
// import 'package:pro_konnect/utils/dimensions.dart';
// import 'package:pro_konnect/widgets/backButtonTop.dart';
// import 'package:pro_konnect/widgets/buttonRounded.dart';

// import 'package:pro_konnect/widgets/roundedTextFieldWhite.dart';

// import '../base/showCustomSnackbar.dart';

// import '../testing/screensBottomTest.dart';

// class WelcomeUserPro extends StatelessWidget {
//   final String selectedUser;
//   const WelcomeUserPro({Key? key, required this.selectedUser})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     print(selectedUser);
//     var studentIdController = TextEditingController();
//     var PasswordController = TextEditingController();

//     void _signIn() {
//       String studentId = studentIdController.text.trim();

//       String password = PasswordController.text.trim();

//       if (studentId.isEmpty) {
//         showCustomSnackBar(
//           "Student ID is required ,",
//           title: "StudentId",
//           bannerColor: Colors.red,
//         );
//       } else if (password.length < 6) {
//         showCustomSnackBar(
//           "Passowrd can not less than six character ,",
//           title: "Password",
//           bannerColor: Colors.red,
//         );
//       } else if (selectedUser == User.proguide) {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => ScreenTestBottomnavPro()));
//       } else {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => ScreenTestBottomnavPro()));
//       }
//     }

//     var size = MediaQuery.of(context).size;

//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           height: double.maxFinite,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   colorFilter: ColorFilter.mode(
//                       AppColors.rectangle_bg, BlendMode.darken),
//                   image: AssetImage('assets/images/bg_login.png'),
//                   fit: BoxFit.fill)),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                     padding:
//                         EdgeInsets.symmetric(horizontal: 35.h, vertical: 61.h),
//                     child: BackButtonTop(
//                       vetorIcon: 'assets/icons/back_arrowsvg.svg',
//                       backArroText: Colors.white,
//                     )),
//                 Container(
//                   padding: EdgeInsets.only(
//                     left: Dimensions.width10,
//                     right: Dimensions.width10,
//                     top: Dimensions.height10,
//                   ),
//                   child: Center(
//                       child: Text(
//                     "Welcome!",
//                     style: GoogleFonts.dmSans(
//                         textStyle: TextStyle(
//                             color: Colors.white,
//                             fontSize: 40.sp,
//                             fontWeight: FontWeight.w500)),
//                   )),
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(
//                       left: Dimensions.width10,
//                       right: Dimensions.width10,
//                       top: Dimensions.height10,
//                       bottom: Dimensions.height10),
//                   width: double.maxFinite,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       ButtonRounded(
//                         btnText: "Student",
//                         btnTextColor: Colors.white,
//                         btnColor: selectedUser == User.student
//                             ? AppColors.mainColor
//                             : Colors.white,
//                         btnWidth: Dimensions.width_150,
//                         btnClick: () {},
//                       ),
//                       ButtonRounded(
//                         btnText: "Proguide",
//                         btnWidth: Dimensions.width_150,
//                         btnColor: selectedUser == User.proguide
//                             ? Colors.black
//                             : Colors.white,
//                         btnTextColor: AppColors.mainColor,
//                         btnClick: () {},
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 120.h,
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(
//                       left: Dimensions.width50, right: Dimensions.width50),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                           padding: EdgeInsets.only(left: Dimensions.width20),
//                           child: Text(
//                             "Student ID *",
//                             style: TextStyle(color: Colors.white),
//                           )),
//                       SizedBox(
//                         height: Dimensions.height10,
//                       ),
//                       RoundedWhiteTexhField(
//                         textController: studentIdController,
//                       ),
//                       SizedBox(
//                         height: Dimensions.height30,
//                       ),
//                       Container(
//                           padding: EdgeInsets.only(left: Dimensions.width20),
//                           child: Text(
//                             "Password *",
//                             style: TextStyle(color: Colors.white),
//                           )),
//                       SizedBox(
//                         height: Dimensions.height10,
//                       ),
//                       RoundedWhiteTexhField(
//                         textController: PasswordController,
//                       ),
//                       Padding(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                         child: SizedBox(
//                           width: double.maxFinite,
//                           child: Text(
//                             "Forgot Password ?",
//                             textAlign: TextAlign.right,
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: Dimensions.height45,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(left: 20.w, right: 20.w),
//                         child: ButtonRounded(
//                           btnText: "Login",
//                           btnWidth: double.maxFinite,
//                           btnColor: AppColors.mainColor,
//                           btnTextColor: Colors.white,
//                           btnHeight: Dimensions.height45,
//                           btnClick: () {
//                             _signIn();
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         height: Dimensions.height10,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Don't have an account ?",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           GestureDetector(
//                             child: Text(
//                               "Register",
//                               style: TextStyle(
//                                   color: Colors.blue,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => RefferalScreen(
//                                             selectedUser: selectedUser,
//                                           )));
//                             },
//                           ),
//                           SizedBox(
//                             height: Dimensions.height80,
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
