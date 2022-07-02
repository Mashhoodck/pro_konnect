import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/controller/refferalListController.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';

import '../../../../../widgets/viewCircleAvatar.dart';

class RefferalDetails extends StatelessWidget {
  const RefferalDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Get.find<RefferalListController>().getReferalList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProfileHeaderConiatiner(
              tapBack: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.05,
                right: size.width * 0.05,
                top: size.height * 0.05,
                bottom: size.height * 0.05,
              ),
              child: GetBuilder<RefferalListController>(
                  builder: (refferalListBuilder) {
                print(refferalListBuilder);
                return Column(
                  children: [
                    SizedBox(
                      height: size.width * 0.04,
                    ),
                    Text(
                      "REFERRAL COMMISION",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainColor),
                    ),
                    SizedBox(
                      height: size.width * 0.04,
                    ),
                    RefferalCardContainer(),
                    SizedBox(height: size.height * 0.04),
                    RefferalCardContainer()
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class RefferalCardContainer extends StatelessWidget {
  const RefferalCardContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
          left: size.width * 0.02,
          right: size.width * 0.03,
          top: size.height * 0.03,
          bottom: size.width * 0.03),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          child: Row(
            children: [
              ViewProfileAvatar(
                imagePath: "assets/images/bg_login.png",
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              Column(
                children: [
                  Text("Loren Ipsum"),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text("29 Dec 2022"),
                ],
              ),
            ],
          ),
        ),
        Text("\$10")
      ]),
    );
  }
}
