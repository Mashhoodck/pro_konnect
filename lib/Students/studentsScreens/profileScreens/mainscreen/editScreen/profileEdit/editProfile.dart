import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/RoundedBorderTextField.dart';
import 'package:pro_konnect/widgets/backButtonTop.dart';
import 'package:pro_konnect/widgets/circleAvatarProfile.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';
import 'package:pro_konnect/widgets/profileHeaderContainer.dart';
import 'package:pro_konnect/widgets/viewCircleAvatar.dart';
import 'package:textfield_tags/textfield_tags.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: Dimensions.height30,
              ),
              Text(
                "PROFILE",
                style: TextStyle(color: Colors.black),
              ),
              Container(
                child: Column(
                  children: [
                    RoundedBorderTextField(
                      textFielHintTitle: "Mobile Number*",
                    ),
                    RoundedBorderTextField(
                      textFielHintTitle: "Email Address *",
                    ),
                    RoundedBorderTextField(
                      textFielHintTitle: "Country *",
                      sufixIcon: Icon(Icons.arrow_drop_down),
                    ),
                    RoundedBorderTextField(
                      textFielHintTitle: "Intrest *",
                    ),
                    RoundedBorderTextField(
                      textFielHintTitle: "Qualification *",
                    ),
                    RoundedBorderTextField(
                      textFielHintTitle: "Current Projects *",
                      sufixIcon: Icon(Icons.add_circle),
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

_Ondelete() {}
