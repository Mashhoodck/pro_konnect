import 'package:flutter/material.dart';
import 'package:pro_konnect/testing/profileScreen.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/widgets/profileHeaderContainer.dart';

class EditBio extends StatelessWidget {
  const EditBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          ProfileHeaderContainer(
            headerItems: Container(
              child: Text("data"),
            ),
          ),
          Expanded(child: Text("Edit Bio")),
          Container(
            height: 50,
            width: double.maxFinite,
            color: AppColors.mainColor,
          )
        ],
      ),
    ));
  }
}
