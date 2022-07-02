import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/backButtonTop.dart';
import 'package:pro_konnect/widgets/viewCircleAvatar.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final String profileName;
  final String profilePath;
  const ProfileHeaderWidget(
      {Key? key, this.profileName = "", this.profilePath = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 200.h,
      color: AppColors.mainColor,
      child: Column(
        children: [
          BackButtonTop(
            backBtnclick: () {
              Navigator.pop(context);
            },
            backArroText: Colors.white,
            vetorIcon: 'assets/icons/back_back.svg',
          ),
          SizedBox(
            height: Dimensions.height30,
          ),
          ViewProfileAvatar(imagePath: profilePath),
          SizedBox(
            height: Dimensions.height15,
          ),
          Text(
            profileName,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: Dimensions.font20,
          ),
          Container(
            margin: EdgeInsets.only(left: Dimensions.width20),
            child: Row(
              children: [Text("Bio", style: TextStyle(color: Colors.white))],
            ),
          ),
        ],
      ),
    );
  }
}
