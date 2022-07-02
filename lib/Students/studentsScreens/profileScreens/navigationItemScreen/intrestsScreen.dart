import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/controller/studentInterestController.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';

import 'package:pro_konnect/widgets/interestWidgets.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:pro_konnect/widgets/roundedBorderTextField.dart';

import '../../../../controller/userProfileController.dart';
import '../../../../model/studentInterests.dart';

class Interests extends StatelessWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<StudentInterestController>().getStudenInterests();
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
                    left: size.width * 0.05, right: size.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Center(child: Text("INTERESTS")),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text("Your current interests are"),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.only(
                          left: size.width * 0.08, right: size.width * 0.08),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300]),
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          SizedBox(
                            height: 100,
                            child: GetBuilder<StudentInterestController>(
                                builder: (interstTagsbuilder) {
                              return GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2, childAspectRatio: 2),
                                itemBuilder: (context, index) {
                                  return tagsListBuildPage(
                                      index,
                                      interstTagsbuilder.interestList[index],
                                      size);
                                  ;
                                },
                                itemCount: 10,
                              );
                            }),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text("Add more interests"),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          right: size.width * 0.03,
                          top: size.width * 0.03,
                          bottom: size.width * 0.03),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextField(),
                          SizedBox(
                            width: size.width * 0.05,
                          ),
                          Icon(Icons.add_circle)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    ButtonRounded(
                      btnText: "Update",
                      btnWidth: double.maxFinite,
                      btnColor: AppColors.mainColor,
                      btnTextColor: Colors.white,
                      btnClick: () {},
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
      ),
    );
  }

  Container tagsListBuildPage(
      int index, InterestsModel interestsModel, Size size) {
    return Container(
      width: size.width * 0.2,
      padding:
          EdgeInsets.only(left: size.width * 0.01, right: size.width * 0.01),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Colors.black)),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(interestsModel.name!), Icon(Icons.cancel)],
            ),
          ],
        ),
      ),
    );
  }
}
