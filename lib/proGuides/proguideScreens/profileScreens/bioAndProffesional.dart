import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/roundedButton.dart';

import '../../../widgets/profileHeader.dart';

class BioAndProfile extends StatelessWidget {
  const BioAndProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfileHeaderConiatiner(
              tapBack: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              "Bio & PROFFESSIONAL LINKS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              "Edit Your Bio",
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              padding: const EdgeInsets.only(left: 3, right: 3),
              child: Container(
                padding: EdgeInsets.all(8),
                height: size.height * 0.3,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300]),
                child: Text(
                  "Bio About Proguide",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.09,
            ),
            Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              width: double.maxFinite,
              child: ButtonRounded(
                btnText: "Update",
                btnColor: AppColors.mainColor,
                btnTextColor: Colors.white,
                btnClick: () {},
              ),
            )
          ],
        ),
      ),
    ));
  }
}
