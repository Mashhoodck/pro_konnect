import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/projectCreate/createProjects.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/headerProfileWidget.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:pro_konnect/widgets/projectListContainer.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ProfileHeaderConiatiner(
              tapBack: () {
                Navigator.pop(context);
              },
            ),
            Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    Text(
                      "PROJECTS",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    Container(
                      child: ButtonRounded(
                        btnText: "Create New Project",
                        btnColor: AppColors.mainColor,
                        btnWidth: double.maxFinite,
                        btnTextColor: Colors.white,
                        btnClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateProject()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.width20,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(
                      left: size.width * 0.02, right: size.width * 0.02),
                  child: Column(
                    children: [
                      ListContainerWidget(
                          profilePath: "assets/images/proguides (1).png",
                          titleGuide:
                              "Drip Irigation System \n Using Bluetooth",
                          nameProguide: "John",
                          contry: "India",
                          specialisation: "Electronics",
                          status: 'FinalStage-Aurdino'),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      ListContainerWidget(
                          profilePath: "assets/images/proguides (2).png",
                          titleGuide:
                              "Drip Irigation \n System Using Bluetooth",
                          nameProguide: "John",
                          contry: "India",
                          specialisation: "Electronics",
                          status: 'FinalStage-Aurdino'),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      ListContainerWidget(
                          profilePath: "assets/images/proguides (3).png",
                          titleGuide:
                              "Drip Irigation \n System Using Bluetooth",
                          nameProguide: "John",
                          contry: "India",
                          specialisation: "Electronics",
                          status: 'FinalStage-Aurdino'),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
