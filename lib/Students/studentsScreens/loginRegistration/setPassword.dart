import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_konnect/Students/welcomeUserScreen.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/RoundedBorderTextField.dart';
import 'package:pro_konnect/widgets/backButtonTop.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/circleAvatarProfile.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.h, vertical: 61.h),
                  child: BackButtonTop(
                    backBtnclick: () {
                      Navigator.pop(context);
                    },
                    backArroText: Colors.black,
                    vetorIcon: 'assets/icons/back_back.svg',
                  )),
              SizedBox(
                height: Dimensions.height45,
              ),
              Text("Set Your Password",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              SizedBox(
                height: Dimensions.height30,
              ),
              CirleAvatarProfile(
                avatarTitle: "Nulla blandit leo",
                imagePath: AssetImage("assets/images/bg_select.png"),
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              RoundedBorderTextField(
                textFielHintTitle: "Password *",
                sufixIcon: Icon(Icons.visibility),
              ),
              SizedBox(
                height: Dimensions.height15,
              ),
              RoundedBorderTextField(
                textFielHintTitle: "Confirm Password *",
                sufixIcon: Icon(Icons.visibility),
              ),
              SizedBox(
                height: 80.h,
              ),
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: ButtonRounded(
                  btnText: "Continue",
                  btnWidth: double.maxFinite,
                  btnTextColor: Colors.white,
                  btnColor: AppColors.mainColor,
                  btnClick: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomeUser()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
