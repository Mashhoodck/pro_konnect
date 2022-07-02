import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/roundedButton.dart';

import '../../../../base/showCustomSnackbar.dart';
import '../../../../widgets/profileHeader.dart';

class RateUs extends StatelessWidget {
  const RateUs({Key? key}) : super(key: key);

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
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.05, right: size.width * 0.05),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Center(
                      child: Text("RATE US"),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text("Type your review"),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey[300],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                        height: 200,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            autofocus: false,
                            decoration: InputDecoration(
                                hintText: "wrire your review",
                                border: InputBorder.none),
                            textInputAction: TextInputAction.newline,
                            maxLines: null,
                            minLines: null,
                            expands: true,
                          ),
                        )),
                    SizedBox(height: size.height * 0.05),
                    SizedBox(
                      width: double.maxFinite,
                      child: ButtonRounded(
                        btnText: "Submit",
                        btnColor: AppColors.mainColor,
                        btnTextColor: Colors.white,
                        btnClick: () {
                          showCustomSnackBar("Thank you for Rating us",
                              title: "", bannerColor: Colors.green);
                          Navigator.pop(context);
                        },
                      ),
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
      ),
    );
  }
}
