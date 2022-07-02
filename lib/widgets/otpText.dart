import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class OtpBox extends StatelessWidget {
  final TextEditingController OtptextControllar;
  const OtpBox({Key? key, required this.OtptextControllar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height45,
      width: Dimensions.height45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        controller: OtptextControllar,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          contentPadding: EdgeInsets.only(
              left: Dimensions.width10,
              right: Dimensions.width10,
              top: Dimensions.height10,
              bottom: Dimensions.height10),
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
