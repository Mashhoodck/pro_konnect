import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/bankDataScreens/addBank.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:pro_konnect/widgets/virtualCardContainer.dart';

class BankAccount extends StatelessWidget {
  const BankAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ProfileHeaderConiatiner(
                //  onTap: () {
                //     Navigator.pop(context);
                //   },
                ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.03, right: size.width * 0.03),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  VirtualCard(
                    size: size,
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddBank()));
                    },
                  ),
                  SizedBox(height: size.height * 0.2),
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
