import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/checkOut.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/currentPlans.dart';
import 'package:pro_konnect/model/planListModel.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';

class PlansDetails extends StatelessWidget {
  const PlansDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                  bottom: size.height * 0.05),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text("PLAN DETAILS"),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: size.width * 0.05,
                        right: size.width * 0.05,
                        bottom: size.height * 0.05),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Container(
                      margin: EdgeInsets.only(
                          left: size.width * 0.02, right: size.width * 0.02),
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Text("Plan-1",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$2",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      ("\$2"),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.black38),
                                    ),
                                    Text(
                                      "\$ 1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.black38),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Access to Student ProKonnectors."),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Text("Access to ProKonnector Discussion groups."),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Text("Access to project management."),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Text(
                                  "Access to all trainings, webinars and campus events.")
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  ButtonRounded(
                    btnText: "Continue",
                    btnWidth: double.maxFinite,
                    btnColor: AppColors.mainColor,
                    btnTextColor: Colors.white,
                    btnClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckOut(
                                  planTitile: "planTitle",
                                  plaPrice: "\$2",
                                  planOfferPrice: "\$2")));
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
