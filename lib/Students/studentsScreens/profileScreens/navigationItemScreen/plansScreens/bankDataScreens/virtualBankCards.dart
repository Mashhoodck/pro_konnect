import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/bankDataScreens/addBank.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/withdraw.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:pro_konnect/widgets/virtualCardContainer.dart';
import 'package:pro_konnect/widgets/virtualCardList.dart';

class BankCardsList extends StatelessWidget {
  const BankCardsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeaderConiatiner(
                  // onTap: () {
                  //   Navigator.pop(context);
                  // },
                  ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.05, right: size.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      "BANK ACCOUNT",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      height: size.height * 0.2,
                      width: double.maxFinite,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => VirtualCardsList(
                                size: size,
                                cardColor: Color.fromARGB(255, 221, 128, 22),
                              ),
                          separatorBuilder: (context, _) => SizedBox(
                                width: size.width * 0.02,
                              ),
                          itemCount: 5),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddBank()));
                      },
                      child: Container(
                        width: size.width * 0.6,
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_circle,
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              "ADD BANK ACCOUNT",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    SizedBox(
                        width: double.maxFinite,
                        child: ButtonRounded(
                          btnText: "Continue",
                          btnClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Withdrawal()));
                          },
                          btnTextColor: Colors.white,
                          btnColor: AppColors.mainColor,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
