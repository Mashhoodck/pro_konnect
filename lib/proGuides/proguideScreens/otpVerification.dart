import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_konnect/Students/studentsScreens/loginRegistration/setPassword.dart';
import 'package:pro_konnect/Students/studentsScreens/loginRegistration/verificationCompletedScreen.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/bankDataScreens/successScreen.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/backButtonTop.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';

import '../../../widgets/otpText.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstDigitController = TextEditingController();

    var secondDigitController = TextEditingController();
    var thirdDigitController = TextEditingController();
    var fourthDigitController = TextEditingController();

    void otpChe() {
      String otpTwo = secondDigitController.toString().trim();
      String otpThree = secondDigitController.toString().trim();
      String otpFour = secondDigitController.toString().trim();
      String otpFive = secondDigitController.toString().trim();
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Column(
              children: [
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.h, vertical: 61.h),
                    child: BackButtonTop(
                      backBtnclick: () {
                        Navigator.pop(context);
                      },
                      backArroText: Colors.black,
                      vetorIcon: 'assets/icons/blackarrow.svg',
                    )),
                SizedBox(
                  height: 120.h,
                ),
                Text(
                  "Email Verification",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Text(
                    "Please enter 4 digit OTP send to \n       @xyzexamples.com"),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Text(
                  "Enter OTP",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OtpBox(
                      OtptextControllar: firstDigitController,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    OtpBox(
                      OtptextControllar: secondDigitController,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    OtpBox(
                      OtptextControllar: thirdDigitController,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    OtpBox(
                      OtptextControllar: fourthDigitController,
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Text("00 : 00"),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't received OTP ? "),
                    Text(
                      "Resend",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                SizedBox(
                  height: Dimensions.height30,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width30, right: Dimensions.width30),
                  child: ButtonRounded(
                    btnText: "Verify",
                    btnWidth: double.maxFinite,
                    btnColor: AppColors.mainColor,
                    btnTextColor: Colors.white,
                    btnClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifiedScreen()));
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
