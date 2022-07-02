import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/proguidesAndstudents/proguidefilterdList.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/proguidesAndstudents/studentFilter.dart';
import 'package:pro_konnect/utils/colors.dart';

import '../../../../../controller/plan_Select_Controller.dart';
import '../../../../../controller/proguideFilterController.dart';
import '../../../../../widgets/buttonRounded.dart';
import '../../../../../widgets/profileHeader.dart';

class FilterProguides extends StatelessWidget {
  FilterProguidesController filterProguidesController =
      Get.put(FilterProguidesController());
  FilterProguides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeaderConiatiner(
              tapBack: () {
                // Navigator.pop(context);
              },
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.sort),
                            SizedBox(
                              width: 3,
                            ),
                            Text("Sort")
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.filter),
                            SizedBox(
                              width: 3,
                            ),
                            Text("Filter")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FilterProguides()));
                        },
                        child: Text("Proguides"),
                        color: AppColors.mainColor,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FilterStudents()));
                        },
                        child: Text("Students"),
                        color: Colors.grey[300],
                        textColor: AppColors.mainColor,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Obx(() => Radio(
                              value: "Specialization",
                              groupValue:
                                  filterProguidesController.filter.value,
                              onChanged: (value) {
                                filterProguidesController
                                    .onChangedFiterProguide(value);
                                print(value);
                              })),
                          Text("Specialization")
                        ],
                      ),
                      Row(
                        children: [
                          Obx(() => Radio(
                              value: "Qualification",
                              groupValue:
                                  filterProguidesController.filter.value,
                              onChanged: (value) {
                                filterProguidesController
                                    .onChangedFiterProguide(value);
                                print(value);
                              })),
                          Text("Qualification")
                        ],
                      ),
                      Row(
                        children: [
                          Obx(() => Radio(
                              value: "Interests",
                              groupValue:
                                  filterProguidesController.filter.value,
                              onChanged: (value) {
                                filterProguidesController
                                    .onChangedFiterProguide(value);
                                print(value);
                              })),
                          Text("Interests")
                        ],
                      ),
                      Row(
                        children: [
                          Obx(() => Radio(
                              value: "Rating",
                              groupValue:
                                  filterProguidesController.filter.value,
                              onChanged: (value) {
                                filterProguidesController
                                    .onChangedFiterProguide(value);
                                print(value);
                              })),
                          Text("Rating")
                        ],
                      ),
                      Row(
                        children: [
                          Obx(() => Radio(
                              value: "City near me",
                              groupValue:
                                  filterProguidesController.filter.value,
                              onChanged: (value) {
                                filterProguidesController
                                    .onChangedFiterProguide(value);
                                print(value);
                              })),
                          Text("City near me")
                        ],
                      ),
                      Row(
                        children: [
                          Obx(() => Radio(
                              value: "Name A-Z",
                              groupValue:
                                  filterProguidesController.filter.value,
                              onChanged: (value) {
                                filterProguidesController
                                    .onChangedFiterProguide(value);
                                print(value);
                              })),
                          Text("Name A-Z")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  ButtonRounded(
                    btnText: "Apply Changes",
                    btnWidth: double.maxFinite,
                    btnColor: AppColors.mainColor,
                    btnTextColor: Colors.white,
                    btnClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilterdProguideList()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
