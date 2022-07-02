import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/choosetype.dart';
import 'package:pro_konnect/Students/studentsScreens/homeScreen.dart';
import 'package:pro_konnect/testing/profileScreen.dart';
import 'package:pro_konnect/utils/colors.dart';

import '../bottomBarScreens/studentAndProguides.dart';

class ScreenTestBottomnav extends StatefulWidget {
  const ScreenTestBottomnav({Key? key}) : super(key: key);

  @override
  State<ScreenTestBottomnav> createState() => _ScreenTestBottomnavState();
}

class _ScreenTestBottomnavState extends State<ScreenTestBottomnav> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> screeens = [
      StudentHomeScreen(),
      StudentProguideList(),
      ProfileScreen()
    ];

    return SafeArea(
      child: Scaffold(
        body: screeens.elementAt(currentindex),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            currentIndex: currentindex,
            onTap: (index) => setState(() {
                  currentindex = index;
                }),
            backgroundColor: AppColors.mainColor,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.white),
                  label: "",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_chart_outlined, color: Colors.white),
                  label: "",
                  backgroundColor: Color.fromARGB(255, 202, 191, 191)),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  label: "",
                  backgroundColor: Colors.white),
            ]),
      ),
    );
  }
}
