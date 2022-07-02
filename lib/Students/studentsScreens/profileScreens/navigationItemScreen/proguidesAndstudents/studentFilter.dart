import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/proguidesAndstudents/proguidefilterdList.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/proguidesAndstudents/studentFilterList.dart';
import 'package:pro_konnect/utils/colors.dart';

import '../../../../../controller/plan_Select_Controller.dart';
import '../../../../../controller/proguideFilterController.dart';
import '../../../../../widgets/buttonRounded.dart';
import '../../../../../widgets/profileHeader.dart';

class FilterStudents extends StatelessWidget {
  FilterProguidesController filterProguidesController =
      Get.put(FilterProguidesController());
  FilterStudents({Key? key}) : super(key: key);

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
                        onPressed: () {},
                        child: Text("Proguides"),
                        color: Colors.grey[300],
                        textColor: AppColors.mainColor,
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text("Students"),
                        color: AppColors.mainColor,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                              value: "Country",
                              groupValue:
                                  filterProguidesController.filter.value,
                              onChanged: (value) {
                                filterProguidesController
                                    .onChangedFiterProguide(value);
                                print(value);
                              })),
                          Text("Country")
                        ],
                      ),
                      Row(
                        children: [
                          Obx(() => Radio(
                              value: "Name A -Z",
                              groupValue:
                                  filterProguidesController.filter.value,
                              onChanged: (value) {
                                filterProguidesController
                                    .onChangedFiterProguide(value);
                                print(value);
                              })),
                          Text("Name A -Z")
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
                              builder: (context) => StudentFilterList()));
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
