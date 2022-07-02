import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/paymentSucces.dart';
import 'package:pro_konnect/widgets/RoundedBorderTextField.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:pro_konnect/widgets/virtualCardContainer.dart';

import '../../../../../utils/colors.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeaderConiatiner(
                  //  onTap: () {
                  //     Navigator.pop(context);
                  //   },
                  ),
              Padding(
                padding: EdgeInsets.only(
                    right: size.width * 0.05,
                    left: size.width * 0.05,
                    top: size.width * 0.02,
                    bottom: size.width * 0.02),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    VirtualCard(
                      size: size,
                      onClick: () {},
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                    RoundedBorderTextField(
                      textFielHintTitle: "Name on the card",
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    RoundedBorderTextField(
                      textFielHintTitle: "Card number",
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.3,
                          child: RoundedBorderTextField(
                            textFielHintTitle: "CVV",
                          ),
                        ),
                        Container(
                          width: size.width * 0.3,
                          child: RoundedBorderTextField(
                            textFielHintTitle: "Exp Date",
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$60.00",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    ButtonRounded(
                      btnText: "Pay Now",
                      btnWidth: double.maxFinite,
                      btnColor: AppColors.mainColor,
                      btnTextColor: Colors.white,
                      btnClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentSuccess()));
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkPayment() {
    try {} catch (error) {
      print("Payment Error ==> $error");
    }
  }
}
