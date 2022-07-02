import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/currentPlans.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/cardContainer.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';

class UpdatePlan extends StatelessWidget {
  const UpdatePlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfileHeaderConiatiner(
                  // onTap: () {
                  //   Navigator.pop(context);
                  // },
                  ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.03, right: size.width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "CURRENT PLAN",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                        "Loren ipsum Loren ipsumLoren ipsumLoren ipsum Loren ipsum \nLoren ipsumLoren ipsumLoren ipsumLoren ipsum"),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    CardContainer(
                      children: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Platinum",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$ 70/mo"),
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "\$ 100",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.black38),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.01,
                                    ),
                                    Text(
                                      "\$70",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.03, right: size.width * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonRounded(
                              btnText: "Update Plan",
                              boderWidth: 50,
                              btnClick: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CurrentPlans()));
                              },
                              btnColor: Colors.white,
                              btnWidth: 1,
                              btnTextColor: Colors.black,
                              borderColor: Colors.black),
                          ButtonRounded(
                            btnText: "Renew",
                            btnClick: () {},
                            btnColor: AppColors.mainColor,
                            btnTextColor: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
