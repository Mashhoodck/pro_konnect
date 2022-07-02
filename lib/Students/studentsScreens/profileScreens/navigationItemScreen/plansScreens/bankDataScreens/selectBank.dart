import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:pro_konnect/widgets/virtualCardContainer.dart';

class SelectBank extends StatelessWidget {
  const SelectBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProfileHeaderConiatiner(
                //  onTap: () {
                //     Navigator.pop(context);
                //   },
                ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              child: Column(
                children: [
                  Text(
                    "BANK ACCOUNT",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.03),
                  VirtualCard(
                    size: size,
                    onClick: () {},
                  ),
                  SizedBox(
                    height: size.height * 0.10,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: ButtonRounded(
                      btnText: "Continue",
                      btnClick: () {},
                      btnColor: AppColors.mainColor,
                      btnTextColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
