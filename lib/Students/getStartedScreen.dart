import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_konnect/Students/choosetype.dart';
import 'package:pro_konnect/Students/studentsScreens/onBordingScreen.dart';

import 'package:pro_konnect/utils/colors.dart';

import 'package:pro_konnect/widgets/buttonRounded.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final String curvedContainer = "assets/icons/curved_rectangle.svg";
    final String proconnect_logo = "assets/images/logo_pro.png";
    final Widget cuvedBg = SvgPicture.asset(
      curvedContainer,
      fit: BoxFit.fill,
    );
    final Widget logo = Image.asset(
      proconnect_logo,
      fit: BoxFit.fill,
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 301.h,
            child: Stack(
              children: [
                cuvedBg,
                Center(
                  child: Text(
                    "WELCOME",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 118.h,
          ),
          Stack(
            overflow: Overflow.visible,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: SizedBox(
                  height: 250.h,
                  child: logo,
                  width: double.maxFinite,
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(
                    "Get Your Project Done, Together.",
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                bottom: 130.h,
                right: 55.w,
              )
            ],
          ),
          SizedBox(
            height: 118.h,
          ),
          Container(
              margin: EdgeInsets.only(left: 45.w, right: 45.w),
              child: ButtonRounded(
                btnText: "Get Started",
                btnColor: AppColors.mainColor,
                btnTextColor: Colors.white,
                btnWidth: double.maxFinite,
                btnClick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseTypeUser()));
                },
              )),
          SizedBox(
            height: 62.h,
          )
        ],
      ),
    );
  }
}
