import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/bankDataScreens/bankAccount.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/cardContainer.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';

import '../../../../../widgets/buttonRounded.dart';

class Withdrawal extends StatelessWidget {
  const Withdrawal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Widget kSizedbox10 = SizedBox(
      height: size.height * 0.04,
    );

    Widget kSizedBox2W = SizedBox(
      width: size.width * 0.2,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ProfileHeaderConiatiner(onTap: () {
            //   Navigator.pop(context);
            // }),
            SizedBox(
              height: size.height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    "WITHDRAW",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainColor),
                  ),
                  kSizedbox10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Your balance"), Text("\$10")],
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Text("Withdraw"),
                  kSizedbox10,
                  Text("AMOUNT"),
                  kSizedbox10,
                  CardContainer(
                    children: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("\$ Enter Amount"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BankAccount()));
                      },
                      child: CardContainer(
                          children: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.house_siding_sharp),
                            Text(
                              "Select Bank Account",
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 15,
                            )
                          ],
                        ),
                      )),
                    ),
                  ),
                  kSizedbox10,
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (bool) {}),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      Text("Terms & Conditions"),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 15,
                      )
                    ],
                  ),
                  kSizedbox10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Text(" . Loren ipsum"),
                            kSizedbox10,
                            Text(" . Loren ipsum"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.20,
                        child: ButtonRounded(
                          btnText: "Withdraw",
                          btnWidth: double.maxFinite,
                          btnColor: AppColors.mainColor,
                          btnTextColor: Colors.white,
                          btnClick: () {},
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      SizedBox(
                        width: size.width * 0.20,
                        child: ButtonRounded(
                          btnText: "Cancel",
                          btnWidth: double.maxFinite,
                          borderColor: Colors.black,
                          btnColor: Colors.white30,
                          btnTextColor: Colors.black,
                          btnClick: () {},
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
