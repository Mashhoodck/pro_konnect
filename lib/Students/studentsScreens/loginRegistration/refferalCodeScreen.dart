import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_konnect/Students/studentsScreens/loginRegistration/registration.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/backButtonTop.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/roundedTextFieldWhite.dart';

TextEditingController controller = new TextEditingController();

String valueRefferal = controller.text;

class RefferalScreen extends StatefulWidget {
  final selectedUser;

  const RefferalScreen({
    Key? key,
    this.selectedUser,
  }) : super(key: key);

  @override
  State<RefferalScreen> createState() => _RefferalScreenState();
}

class _RefferalScreenState extends State<RefferalScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButtonTop(
            backBtnclick: () {
              Navigator.pop(context);
            },
            backArroText: Colors.black,
            vetorIcon: "'assets/icons/back_arrowsvg.svg'",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 150.h),
                child: Text(
                  "Refferal Code",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.signColor),
                ),
              ),
              SizedBox(
                height: 150.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, right: 40.w),
                child: RoundedWhiteTexhField(
                  textController: controller,
                  fillColor: AppColors.searchfield,
                  hint: "Enter Your Referral Code *",
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Text(
                "Don't have a refferal code ?",
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Text(
                "Contact Support",
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: Dimensions.height45,
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.w, right: 60.w),
                child: ButtonRounded(
                  btnText: "Continue",
                  btnColor: AppColors.mainColor,
                  btnTextColor: Colors.white,
                  btnWidth: double.maxFinite,
                  btnClick: () {
                    print(valueRefferal);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationStudent(
                                  selectedUser: widget.selectedUser,
                                  refferalCode: valueRefferal,
                                )));
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
