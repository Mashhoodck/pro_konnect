import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/currentPlans.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/updatePlan.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/verifiedContainer.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VerifiedContainer(
            verifiedMessage: "Plan Purchased Successfully",
          ),
          SizedBox(
            height: size.height * 0.09,
          ),
          ButtonRounded(
            btnText: "Return to current Plan",
            btnClick: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (contect) => UpdatePlan()));
            },
            btnColor: AppColors.mainColor,
            btnTextColor: Colors.white,
          )
        ],
      ),
    );
  }
}
