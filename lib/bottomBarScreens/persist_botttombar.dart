// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pro_konnect/Students/studentsScreens/homeScreen.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/chatHistory/proChatScreen.dart';
import 'package:pro_konnect/bottomBarScreens/studentAndProguides.dart';
import 'package:pro_konnect/proGuides/proguideScreens/proguideProfile.dart';
import 'package:pro_konnect/proGuides/testing/proChatScreen.dart';
import 'package:pro_konnect/utils/colors.dart';

import '../proGuides/proguideScreens/navigationScreens.dart/profileScreen.dart';
import '../testing/profileScreen.dart';

final PersistentTabController _controller =
    PersistentTabController(initialIndex: 0);

List<PersistentBottomNavBarItem> _navBarItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(
        Icons.auto_graph_outlined,
        color: Colors.white,
        size: 30,
      ),
      title: "",
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.white,
        size: 30,
      ),
      title: "",
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        Icons.person,
        color: Colors.white,
        size: 30,
      ),
      title: "",
    ),
  ];
}

class PersistBottombarPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: AppColors.mainColor, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [ProguideChat(), ProguideHome(), ProfileScreenPro()];
  }
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.chat),
      title: ("Home"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.show_chart_sharp),
      title: ("Settings"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.person),
      title: ("Settings"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}
