// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:pro_konnect/Students/studentsScreens/loginRegistration/otpVerification.dart';
// import 'package:pro_konnect/base/showCustomSnackbar.dart';
// import 'package:pro_konnect/utils/colors.dart';
// import 'package:pro_konnect/utils/dimensions.dart';
// import 'package:pro_konnect/widgets/RoundedBorderTextField.dart';
// import 'package:pro_konnect/widgets/backButtonTop.dart';
// import 'package:pro_konnect/widgets/buttonRounded.dart';
// import 'package:pro_konnect/widgets/circleAvatarProfile.dart';

// class RegistrationProguide extends StatelessWidget {
//   const RegistrationProguide({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var fullNameController = TextEditingController();
//     var emailController = TextEditingController();
//     var countryController = TextEditingController();
//     var qualificationController = TextEditingController();
//     var universityController = TextEditingController();
//     var intrestController = TextEditingController();
//     var spcializationController = TextEditingController();
//     var signupImages = [
//       "t.png",
//       "f.png"
//           "g.png"
//     ];

//     void _registration() {
//       String namePro = fullNameController.text.trim();
//       String emailPro = emailController.text.trim();
//       String counrtyPro = countryController.text.trim();
//       String qualificationPro = qualificationController.text.trim();
//       String universityPro = universityController.text.trim();
//       String intrestPro = intrestController.text.trim();
//       String specialization = spcializationController.text.trim();

//       if (namePro.isEmpty) {
//         showCustomSnackBar("Type in your name ,",
//             title: "Name", bannerColor: Colors.red);
//       } else if (emailPro.isEmpty) {
//         showCustomSnackBar("Type in your email ,",
//             title: "Email", bannerColor: Colors.red);
//       } else if (!GetUtils.isEmail(emailPro)) {
//         showCustomSnackBar("Type in a valid email address ,",
//             title: "Valid email address", bannerColor: Colors.red);
//       } else if (counrtyPro.isEmpty) {
//         showCustomSnackBar("Type in your country ,",
//             title: "Country", bannerColor: Colors.red);
//       } else if (qualificationPro.isEmpty) {
//         showCustomSnackBar(
//           "Type in your qualification ,",
//           title: "Qualification",
//           bannerColor: Colors.red,
//         );
//       } else if (universityPro.isEmpty) {
//         showCustomSnackBar("Type in your university ,",
//             title: "University", bannerColor: Colors.red);
//       } else if (intrestPro.isEmpty) {
//         showCustomSnackBar("Type in your Interest ,",
//             title: "Interest", bannerColor: Colors.red);
//       } else if (specialization.isEmpty) {
//         showCustomSnackBar("Type in your Specialization ,",
//             title: "Specialization", bannerColor: Colors.red);
//       } else {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => OTPVerificationPro()));
//       }
//     }

//     return SafeArea(
//         child: Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: Row(
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
//               child: BackButtonTop(
//                 vetorIcon: "'assets/icons/back_back.svg'",
//               ),
//             )
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: Dimensions.height20,
//             ),
//             ButtonRounded(
//               btnText: "Proguide Registration",
//               btnTextColor: Colors.white,
//               btnColor: AppColors.mainColor,
//               btnWidth: Dimensions.width150,
//               btnClick: () {},
//             ),
//             ButtonRounded(
//               btnText: "Student Registration",
//               btnTextColor: Colors.black,
//               btnColor: Color.fromARGB(255, 230, 224, 224),
//               btnWidth: Dimensions.width150,
//               btnClick: () {},
//             ),
//             SizedBox(
//               height: Dimensions.height20,
//             ),
//             CirleAvatarProfile(
//               imagePath: "assets/images/bg_select.png",
//             ),
//             SizedBox(
//               height: Dimensions.height20,
//             ),
//             RoundedBorderTextField(
//               textControllar: fullNameController,
//               textFielHintTitle: "Full Name *",
//             ),
//             RoundedBorderTextField(
//               textControllar: emailController,
//               textFielHintTitle: "Email Address *",
//             ),
//             RoundedBorderTextField(
//               textControllar: countryController,
//               textFielHintTitle: "Country *",
//               sufixIcon: Icon(Icons.arrow_drop_down),
//             ),
//             RoundedBorderTextField(
//               textControllar: qualificationController,
//               textFielHintTitle: "Qualification *",
//               sufixIcon: Icon(Icons.add_circle_rounded),
//             ),
//             RoundedBorderTextField(
//               textControllar: universityController,
//               textFielHintTitle: "University *",
//             ),
//             RoundedBorderTextField(
//               textControllar: intrestController,
//               sufixIcon: Icon(Icons.add_circle_rounded),
//               textFielHintTitle: "Your Interests *",
//             ),
//             RoundedBorderTextField(
//               textControllar: spcializationController,
//               sufixIcon: Icon(Icons.add_circle_rounded),
//               textFielHintTitle: "Specializations *",
//             ),
//             SizedBox(
//               height: Dimensions.height10,
//             ),

//             //check box for agree
//             Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Checkbox(value: false, onChanged: (bool) {}),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                               "By checking the box, you agree to the ProKonnect"),
//                           Text(
//                             "Privacy Policy",
//                             style: TextStyle(color: Colors.blue),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(
//                   left: Dimensions.width20, right: Dimensions.width20),
//               child: ButtonRounded(
//                 btnText: "Register",
//                 btnColor: AppColors.mainColor,
//                 btnWidth: double.maxFinite,
//                 btnTextColor: Colors.white,
//                 btnClick: () {
//                   _registration();
//                 },
//               ),
//             ),
//             SizedBox(
//               height: Dimensions.height10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Already registered ?"),
//                 SizedBox(
//                   width: Dimensions.width10,
//                 ),
//                 Text(
//                   "Login",
//                   style: TextStyle(color: Colors.blue),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: Dimensions.height30,
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }
