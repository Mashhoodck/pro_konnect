import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/bankDataScreens/successScreen.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/bankDataScreens/virtualBankCards.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/backButtonTop.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/widgets/virtualCardContainer.dart';

import '../../../../../../base/showCustomSnackbar.dart';
import '../../../../../../widgets/RoundedBorderTextField.dart';
import '../../../../../../widgets/roundedTextFieldWhite.dart';

class AddBank extends StatelessWidget {
  const AddBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController countryController = TextEditingController();
    final TextEditingController bankNameController = TextEditingController();
    final TextEditingController accountHolderNameController =
        TextEditingController();
    final TextEditingController AccountNumberController =
        TextEditingController();
    final TextEditingController micrController = TextEditingController();
    var size = MediaQuery.of(context).size;

    void addBankDetails() {
      String country = countryController.text.trim();
      String bank = bankNameController.text.trim();
      String holder = accountHolderNameController.text.trim();
      String accountNo = AccountNumberController.text.trim();
      String micr = micrController.text.trim();

      if (country.isEmpty) {
        showCustomSnackBar("Country Required ,",
            title: "Enter your country ", bannerColor: Colors.red);
      } else if (bank.isEmpty) {
        showCustomSnackBar("Bank Required ,",
            title: "Enter your Bank Name ", bannerColor: Colors.red);
      } else if (holder.isEmpty) {
        showCustomSnackBar("Enter account holder Name,",
            title: "Account Holder Name", bannerColor: Colors.red);
      } else if (accountNo.isEmpty) {
        showCustomSnackBar("Enter your account number,",
            title: "Account Number Is  Required", bannerColor: Colors.red);
      } else if (micr.isEmpty) {
        showCustomSnackBar("Enter your MICR,",
            title: "MICR Is  Required", bannerColor: Colors.red);
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SuccessScreen()));
      }
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.width * 0.05, horizontal: size.width * 0.05),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: BackButtonTop(
                    backBtnclick: () {
                      Navigator.pop(context);
                    },
                    vetorIcon: "assets/icons/back_back.svg",
                    backArroText: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.05, right: size.width * 0.05),
                child: Column(
                  children: [
                    Text(
                      "ADD BANK",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text("Select your bank"),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    RoundedWhiteTexhField(
                      hint: "Enter your bank name..",
                      fillColor: AppColors.searchfield,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedBorderTextField(
                      textControllar: countryController,
                      textFielHintTitle: "Country *",
                    ),
                    RoundedBorderTextField(
                      textFielHintTitle: "Bank Name *",
                      textControllar: bankNameController,
                    ),
                    RoundedBorderTextField(
                      textFielHintTitle: "Account Holder Name *",
                      textControllar: accountHolderNameController,
                    ),
                    RoundedBorderTextField(
                      textFielHintTitle: "Account Number *",
                      textControllar: AccountNumberController,
                    ),
                    RoundedBorderTextField(
                      textFielHintTitle: "MICR Code *",
                      textControllar: micrController,
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: ButtonRounded(
                          btnText: "Add",
                          btnClick: () {
                            addBankDetails();
                          },
                          btnColor: AppColors.mainColor,
                          btnTextColor: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
