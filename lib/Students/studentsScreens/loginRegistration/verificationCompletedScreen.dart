import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/loginRegistration/setPassword.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';

class VerifiedScreen extends StatelessWidget {
  const VerifiedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(26, 90, 88, 88),
                  borderRadius: BorderRadius.circular(Dimensions.radius20)),
              width: Dimensions.height300,
              height: Dimensions.height300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      Icon(
                        Icons.verified,
                        color: Colors.green[400],
                        size: Dimensions.height80,
                      ),
                      Text(
                        "Verified!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      Text("You have successfully verified the account."),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height30,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width10, right: Dimensions.width10),
                    child: ButtonRounded(
                      btnText: "Set Your Password",
                      btnWidth: double.maxFinite,
                      btnColor: AppColors.mainColor,
                      btnTextColor: Colors.white,
                      btnClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SetPassword()));
                      },
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
