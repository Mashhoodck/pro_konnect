import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/projectCreate/projectList.dart';
import 'package:pro_konnect/controller/proguideListController.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';

import '../Students/listData/proguideList.dart';
import '../Students/studentsScreens/profileScreens/navigationItemScreen/proguidesAndstudents/proguideFilter.dart';
import '../model/proGuideListModel.dart';

class StudentProguideList extends StatelessWidget {
  const StudentProguideList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProguideListController>().getProguideList();
    List<ProguideList> listofProguides = [
      ProguideList(
        image: "assets/images/proguides (1).png",
        name: "Name",
        description: "description",
      ),
      ProguideList(
        image: "assets/images/proguides (2).png",
        name: "Name",
        description: "description",
      ),
      ProguideList(
        image: "assets/images/proguides (3).png",
        name: "Name",
        description: "description",
      ),
      ProguideList(
        image: "assets/images/proguides (4).png",
        name: "Name",
        description: "description",
      )
    ];

    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
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
              padding: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FilterProguides()));
                        },
                        child: Container(
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Text(
                    "Our Proguides",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 200,
                    child: GetBuilder<ProguideListController>(
                        builder: (proguidListbuilder) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => buildPage(
                            index, proguidListbuilder.proguideList[index]),
                        itemCount: proguidListbuilder.proguideList.length,
                      );
                    }),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Our Students",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 200,
                    child: GetBuilder<ProguideListController>(
                        builder: (proguidListbuilder) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => buildPage(
                            index, proguidListbuilder.proguideList[index]),
                        itemCount: proguidListbuilder.proguideList.length,
                      );
                    }),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Container buildPage(int index, Proguides proguideListModel) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
              child: Image.asset(
                "assets/images/proguides (2).png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(proguideListModel.name!),
            Text(proguideListModel.email!)
          ],
        ),
      ),
    );
  }
}
