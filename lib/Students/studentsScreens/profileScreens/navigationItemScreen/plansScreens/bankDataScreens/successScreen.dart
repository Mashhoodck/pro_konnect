import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/bankDataScreens/virtualBankCards.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/updatePlan.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../widgets/buttonRounded.dart';
import '../../../../../../widgets/verifiedContainer.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VerifiedContainer(
            verifiedMessage: "Account Detail Added \nSuccessfully",
          ),
          SizedBox(
            height: size.height * 0.09,
          ),
          ButtonRounded(
            btnText: "Continue",
            btnClick: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (contect) => BankCardsList()));
            },
            btnColor: AppColors.mainColor,
            btnTextColor: Colors.white,
          )
        ],
      ),
    );
  }
}
