import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/plansScreens/refferalDetails.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/cardContainer.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:pro_konnect/widgets/roundedButton.dart';
import 'package:pro_konnect/widgets/viewCircleAvatar.dart';

import '../../../../../widgets/buttonRounded.dart';

class RefferalCode extends StatelessWidget {
  const RefferalCode({Key? key}) : super(key: key);

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
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.02,
                right: size.width * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text("REFERRAL CODE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainColor,
                      )),
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  CardContainer(
                    children: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text("Share"),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Icon(
                              Icons.share_rounded,
                              size: 15,
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height * 0.05,
                            ),
                            Text("Your refferal code :     103405"),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Icon(Icons.copy_outlined, size: 15)
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  CardContainer(
                    children: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height * 0.05,
                            ),
                            Text("Your Commission : \$ 10"),
                            Icon(
                              Icons.keyboard_arrow_up_sharp,
                              size: 15,
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            ViewProfileAvatar(
                              imagePath: "assets/images/bg_login.png",
                            ),
                            Positioned(
                                left: -30,
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: ViewProfileAvatar(
                                    imagePath: "assets/images/bg_login.png",
                                  ),
                                )),
                            Positioned(
                                right: -30,
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: ViewProfileAvatar(
                                    imagePath: "assets/images/bg_login.png",
                                  ),
                                )),
                            Positioned(
                                child: SizedBox(
                              height: 20,
                              width: 20,
                              child: ViewProfileAvatar(
                                imagePath: "assets/images/bg_login.png",
                              ),
                            ))
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: size.width * 0.09,
                              right: size.width * 0.09),
                          child: ButtonRounded(
                            btnText: "View Details",
                            btnWidth: double.maxFinite,
                            btnColor: AppColors.mainColor,
                            btnTextColor: Colors.white,
                            btnClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RefferalDetails()));
                            },
                          ),
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
                  ButtonRounded(
                    btnText: "Withdraw",
                    btnWidth: double.maxFinite,
                    btnColor: AppColors.mainColor,
                    btnTextColor: Colors.white,
                    btnClick: () {},
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
