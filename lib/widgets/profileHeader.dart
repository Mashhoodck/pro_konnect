import 'package:flutter/material.dart';
import 'package:pro_konnect/widgets/backButtonTop.dart';
import 'package:pro_konnect/widgets/profileHeaderContainer.dart';
import 'package:pro_konnect/widgets/viewCircleAvatar.dart';

class ProfileHeaderConiatiner extends StatelessWidget {
  final VoidCallback? tapBack;
  ProfileHeaderConiatiner({
    Key? key,
    this.tapBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ProfileHeaderContainer(
        headerItems: Column(
      children: [
        GestureDetector(
          onTap: tapBack,
          child: BackButtonTop(
            backBtnclick: () {
              Navigator.pop(context);
            },
            backArroText: Colors.white,
            vetorIcon: 'assets/icons/back_arrowsvg.svg',
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        ViewProfileAvatar(imagePath: 'assets/images/proguides (1).png'),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          "Profile Name",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        Container(
          margin: EdgeInsets.only(left: size.width * 0.02),
          child: Row(
            children: [Text("Bio", style: TextStyle(color: Colors.white))],
          ),
        ),
      ],
    ));
  }
}
