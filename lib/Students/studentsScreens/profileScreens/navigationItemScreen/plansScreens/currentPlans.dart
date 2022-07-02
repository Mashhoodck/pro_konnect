import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/planDetails.dart';
import 'package:pro_konnect/controller/authController.dart';
import 'package:pro_konnect/controller/planListController.dart';
import 'package:pro_konnect/controller/plan_Select_Controller.dart';
import 'package:pro_konnect/model/planListModel.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:pro_konnect/widgets/profileHeaderContainer.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/widgets/selectPlanCards.dart';

class CurrentPlans extends StatelessWidget {
  PlanSelectionController planSelectionControllar =
      Get.put(PlanSelectionController());
  CurrentPlans({Key? key}) : super(key: key);

  List<dynamic> PlansaData = [];

  @override
  Widget build(BuildContext context) {
    print("printcheck");
    bool _userLoggedIn = Get.find<AuthController>().userLoggedin();
    Get.find<PlanListController>().getStudentPlanList();

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
            Container(
              margin: EdgeInsets.only(
                  left: size.width * 0.03, right: size.width * 0.03),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Center(
                    child: Text(
                      "SELECT YOUR PLAN",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Obx(() => Radio(
                              value: "Monthly",
                              groupValue:
                                  planSelectionControllar.slecetdPlans.value,
                              onChanged: (value) {
                                planSelectionControllar.onChangedPlans(value);
                                Get.find<PlanListController>()
                                    .getStudentPlanList();
                              })),
                          Text("Monthly")
                        ],
                      ),
                      Row(
                        children: [
                          Obx(() => Radio(
                              value: "Annual",
                              groupValue:
                                  planSelectionControllar.slecetdPlans.value,
                              onChanged: (value) {
                                planSelectionControllar.onChangedPlans(value);
                                Get.find<PlanListController>()
                                    .getStudentPlanList();
                              })),
                          Text("Annual")
                        ],
                      ),
                      Obx(() => Row(
                            children: [
                              Radio(
                                  value: "on Demand",
                                  groupValue: planSelectionControllar
                                      .slecetdPlans.value,
                                  onChanged: (value) {
                                    planSelectionControllar
                                        .onChangedPlans(value);
                                    Get.find<PlanListController>()
                                        .getStudentPlanList();
                                  }),
                              Text("On Demand")
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    height: 300,
                    child:
                        GetBuilder<PlanListController>(builder: (planListData) {
                      print(planListData.studentPlanList);
                      return ListView.separated(
                          itemBuilder: (context, index) {
                            // PlansModel plansModelData = PlansaData[index];
                            PlanData planData;
                            planListData.studentPlanList[index];

                            // print(plansModelData);
                            return buildPage(index,
                                planListData.studentPlanList[index], context);
                          },
                          separatorBuilder: (context, index) => SizedBox(
                                height: 5,
                              ),
                          itemCount: planListData.studentPlanList.length);
                    }),
                  ),
                  // PlanCards(
                  //   onClick: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => PlansDetails()));
                  //   },
                  //   cardText: "Basic (14 - Days Free Trial),",
                  //   actualPrice: 70,
                  //   offerPrice: 50,
                  // ),
                  // SizedBox(
                  //   height: size.height * 0.02,
                  // ),
                  // PlanCards(
                  //   cardText: "Platinum",
                  //   actualPrice: 100,
                  //   offerPrice: 70,
                  //   monthlyPrice: "\$" + "80" "/mo",
                  // ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  // PlanCards(
                  //     cardText: "Premium",
                  //     actualPrice: 11,
                  //     offerPrice: 80,
                  //     monthlyPrice: "\$" + "80" "/mo"),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        ),
      )),
    );
  }

  PlanCards buildPage(int index, PlanData planData, BuildContext context) {
    return PlanCards(
      cardText: planData.name,
      offerPrice: planData.basePrice!,
      actualPrice: planData.proguidePrice!,
      onClick: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PlansDetails()));
      },
    );
  }
}

class PlansModelData {
  String planTitle;
  double planPrice;
  double offerPrice;

  PlansModelData(
      {required this.planTitle,
      required this.planPrice,
      required this.offerPrice});
}
