import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_konnect/utils/colors.dart';

class ProfileHeaderContainer extends StatelessWidget {
  final Widget headerItems;
  const ProfileHeaderContainer({Key? key, required this.headerItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: double.maxFinite,
        height: 300.h,
        color: AppColors.mainColor,
        child: headerItems);
  }
}
