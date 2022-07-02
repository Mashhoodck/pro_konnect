import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_konnect/utils/dimensions.dart';

class RoundedWhiteTexhField extends StatelessWidget {
  final Color fillColor;
  final Widget? prefixIcon;
  final String? hint;
  final Form? text;
  final bool obScrText;
  final Widget? suffix;
  final TextEditingController? textController;
  const RoundedWhiteTexhField(
      {this.fillColor = Colors.white,
      this.prefixIcon,
      this.hint,
      this.textController,
      this.text,
      this.obScrText = false,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      margin:
          EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
      child: TextField(
        controller: textController,
        obscureText: obScrText,
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hint,
          suffixIcon: suffix,
          filled: true,
          fillColor: fillColor,
          contentPadding:
              EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(Dimensions.radius30)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(Dimensions.radius20),
          ),
        ),
      ),
    );
  }
}
