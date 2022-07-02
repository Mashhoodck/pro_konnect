import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:pro_konnect/widgets/roundedButton.dart';

import '../../../../base/showCustomSnackbar.dart';
import '../../../../widgets/buttonRounded.dart';
import '../../../../widgets/roundedBorderTextField.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController oldpassword = TextEditingController();
    final TextEditingController newPaasword = TextEditingController();
    final TextEditingController reNewpassword = TextEditingController();

    void setPassword() {
      //
    }

    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeaderConiatiner(
                tapBack: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.03, right: size.width * 0.03),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text("CHANGE PASSWORD",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    RoundedBorderTextField(
                      textControllar: oldpassword,
                      textFielHintTitle: "Enter your current password *",
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    RoundedBorderTextField(
                      textControllar: newPaasword,
                      textFielHintTitle: "Enter your new password *",
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    RoundedBorderTextField(
                      textControllar: newPaasword,
                      textFielHintTitle: "Confirm your new password *",
                    ),
                    SizedBox(
                      height: size.height * 0.09,
                    ),
                    ButtonRounded(
                      btnText: "Change Passowrd",
                      btnColor: AppColors.mainColor,
                      btnTextColor: Colors.white,
                      btnClick: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
