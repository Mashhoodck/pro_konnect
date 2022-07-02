import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/loginRegistration/refferalCodeScreen.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/bankDataScreens/addBank.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/bankDataScreens/virtualBankCards.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/paymentScreen.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/withdraw.dart';
import 'package:pro_konnect/paymentPage/makePayment.dart';
import 'package:pro_konnect/utils/appConstants.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../utils/colors.dart';
import '../../../../../widgets/buttonRounded.dart';

SharedPreferences? sharedPreferences;

class CheckOut extends StatelessWidget {
  final String planTitile;
  final String plaPrice;
  final String planOfferPrice;
  const CheckOut(
      {Key? key,
      required this.planTitile,
      required this.plaPrice,
      required this.planOfferPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(plaPrice);

    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeaderConiatiner(
              tapBack: () {
                Navigator.pop(context);
              },
            ),
            Container(
              margin: EdgeInsets.only(
                  left: size.width * 0.09, right: size.width * 0.09),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Center(
                      child: Text(
                    "CHECKOUT",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text("Your Chosen Plan : "),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Platinum",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "\$ $plaPrice",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Choose Number of Proguide"),
                      Container(
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [Icon(Icons.arrow_drop_down), Text("1")],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Text("Your Refferal Commission : \$ 100"),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                        children: [
                          Checkbox(value: false, onChanged: (bool) {}),
                          Text("Use this amount"),
                        ],
                      )),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Withdrawal()));
                        },
                        child: Text(
                          "View details",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Plan Amount"), Text("\$ 70.00")],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Plan Amount"), Text("\$ 70.00")],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Divider(thickness: 1, color: Colors.black),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Amount : "),
                      Text(
                        "\$ 10.00",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  ButtonRounded(
                    btnText: "Pay \$ $planOfferPrice",
                    btnWidth: double.maxFinite,
                    btnColor: AppColors.mainColor,
                    btnTextColor: Colors.white,
                    btnClick: () {
                      MakePayment(context, 20, 55, "test@gmail.com")
                          .plsnschargeAndMakePayment();
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => PaymentScreen()));
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
    );
  }
}
