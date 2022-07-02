import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pro_konnect/Students/choosetype.dart';
import 'package:pro_konnect/Students/getStartedScreen.dart';
import 'package:pro_konnect/Students/studentsScreens/homeScreen.dart';
import 'package:pro_konnect/Students/studentsScreens/loginRegistration/registration.dart';
import 'package:pro_konnect/bottomBarScreens/studentAndProguides.dart';
import 'package:pro_konnect/controller/planListController.dart';
import 'package:pro_konnect/controller/proguideListController.dart';
import 'package:pro_konnect/testing/profileScreen.dart';

import 'package:pro_konnect/testing/screensBottomTest.dart';

import 'package:pro_konnect/testing/test_twohome.dart';
import 'package:pro_konnect/utils/colors.dart';

import 'package:pro_konnect/widgets/interestWidgets.dart';
import 'package:pro_konnect/widgets/materialtags.dart';

import 'Students/studentsScreens/loginRegistration/refferalCodeScreen.dart';
import 'Students/studentsScreens/profileScreens/mainscreen/editScreen/profileEdit/editProfile.dart';
import 'Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/bankDataScreens/virtualBankCards.dart';
import 'Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/withdraw.dart';
import 'Students/studentsScreens/profileScreens/navigationItemScreen/viewProfile.dart';
import 'Students/welcomeUserScreen.dart';
import 'helper/dependecies.dart' as dep;

void main() async {
  // Get.find<ProguideListController>().getProguideList();
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get.find<PlanListController>().getStudentPlanList();
    // Get.find<PlanListController>().getStudentPlanList();
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pro_konnect',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: GetStartedScreen()),
      designSize: const Size(428, 926),
    );
  }
}

final PersistentTabController _controller =
    PersistentTabController(initialIndex: 0);

List<Widget> _buildScreens() {
  return [StudentProguideList(), StudentHomeScreen(), ProfileScreen()];
}

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

class PersistBottombar extends StatelessWidget {
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
    return [StudentHomeScreen(), StudentProguideList(), ProfileScreen()];
  }
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
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
