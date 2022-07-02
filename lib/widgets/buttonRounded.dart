import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/colors.dart';

import 'package:pro_konnect/utils/dimensions.dart';

class ButtonRounded extends StatelessWidget {
  final String btnText;
  final double? btnWidth;
  final double? btnHeight;
  final Color btnTextColor;
  final Color btnColor;
  final VoidCallback btnClick;
  final double boderWidth;
  final Color borderColor;

  const ButtonRounded(
      {required this.btnText,
      this.btnWidth,
      this.btnHeight,
      this.btnTextColor = Colors.black,
      this.btnColor = Colors.black,
      required this.btnClick,
      this.boderWidth = 0.1,
      this.borderColor = const Color(0xFF000467)});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: FlatButton(
          onPressed: btnClick,
          height: btnHeight,
          minWidth: btnWidth,
          color: btnColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: boderWidth, color: borderColor),
            borderRadius: BorderRadius.circular(Dimensions.radius20),
          ),
          child: Text(
            btnText,
            style: TextStyle(
              color: btnTextColor,
            ),
          )),
    );
  }
}
