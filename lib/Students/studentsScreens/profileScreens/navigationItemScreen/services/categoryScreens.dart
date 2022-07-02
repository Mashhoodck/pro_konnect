import 'package:flutter/material.dart';
import 'package:pro_konnect/widgets/serviceContainer.dart';

import '../../../../../widgets/profileHeader.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ProfileHeaderConiatiner(
                //  onTap: () {
                //     Navigator.pop(context);
                //   },
                ),
            SizedBox(
              height: size.height * 0.06,
            ),
            Center(
              child: Text(
                "SERVICES",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.03, right: size.width * 0.03),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ServiceContainer(
                          title: "Academic Project Information Support",
                          cardColor: Colors.green),
                      ServiceContainer(
                          title:
                              "GraduateSchool Prepration and  Application Support",
                          cardColor: Colors.yellow)
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ServiceContainer(
                          title:
                              "Soft skills Aquisition and Entreprenuerial Training",
                          cardColor: Colors.redAccent),
                      ServiceContainer(
                          title: "Ideation and Personal Development",
                          cardColor: Colors.blueAccent)
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
