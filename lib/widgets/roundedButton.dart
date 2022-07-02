import 'package:flutter/material.dart';

import 'package:pro_konnect/utils/dimensions.dart';

class RoundedButton extends StatelessWidget {
  final String buttonText;
  final double? btnWidth;
  final double? btnHeight;
  final Color? btnColor;
  final Color btnTextColor;
  final VoidCallback? buttonClick;
  const RoundedButton(
      {Key? key,
      required this.buttonText,
      this.btnWidth,
      this.btnHeight,
      this.btnColor,
      this.btnTextColor = Colors.white,
      this.buttonClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(
            left: Dimensions.width10, right: Dimensions.width10),
        child: FlatButton(
            color: Colors.black, onPressed: buttonClick, child: Text("data")));
  }
}
