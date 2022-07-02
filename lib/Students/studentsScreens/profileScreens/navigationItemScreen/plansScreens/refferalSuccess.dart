import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/updatePlan.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/verifiedContainer.dart';

class RefferalSucces extends StatelessWidget {
  const RefferalSucces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VerifiedContainer(
              verifiedMessage: "Plan purchased successfully",
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                  bottom: size.width * 0.03,
                  top: size.width * 0.03),
              width: double.maxFinite,
              child: ButtonRounded(
                btnText: "Return to current plan",
                btnClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UpdatePlan()));
                },
                btnColor: AppColors.mainColor,
                btnTextColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
