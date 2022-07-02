// import 'package:flutter/material.dart';
// import 'package:pro_konnect/Students/studentsScreens/homeScreen.dart';
// import 'package:pro_konnect/proGuides/testing/proChatScreen.dart';
// import 'package:pro_konnect/proGuides/proguideScreens/navigationScreens.dart/profileScreen.dart';
// import 'package:pro_konnect/testing/profileScreen.dart';
// import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/chatHistory/proChatScreen.dart';
// import 'package:pro_konnect/proGuides/proguideScreens/homeScreen.dart';
// import 'package:pro_konnect/utils/colors.dart';

// import '../proguideScreens/proguideProfile.dart';

// class ScreenTestBottomnavPro extends StatefulWidget {
//   const ScreenTestBottomnavPro({Key? key}) : super(key: key);

//   @override
//   State<ScreenTestBottomnavPro> createState() => _ScreenProTestBottomnavState();
// }

// class _ScreenProTestBottomnavState extends State<ScreenTestBottomnavPro> {
//   int currentindex = 0;
//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> screeens = [
//       ProguideChat(),
//       ProguideHome(),
//       ProfileScreenPro()
//     ];

//     return SafeArea(
//       child: Scaffold(
//         body: screeens.elementAt(currentindex),
//         bottomNavigationBar: BottomNavigationBar(
//             showSelectedLabels: true,
//             currentIndex: currentindex,
//             onTap: (index) => setState(() {
//                   currentindex = index;
//                 }),
//             backgroundColor: AppColors.mainColor,
//             items: [
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.home, color: Colors.white),
//                   label: "",
//                   backgroundColor: Colors.blue),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.add_chart_outlined, color: Colors.white),
//                   label: "",
//                   backgroundColor: Color.fromARGB(255, 202, 191, 191)),
//               BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.person,
//                     color: Colors.white,
//                   ),
//                   label: "",
//                   backgroundColor: Colors.white),
//             ]),
//       ),
//     );
//   }
// }
