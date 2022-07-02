import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/dimensions.dart';

class ProfileEditItems extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback onTap;

  const ProfileEditItems(
      {Key? key, required this.title, this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: EdgeInsets.only(
              left: Dimensions.width20, right: Dimensions.width20),
          child: ListTile(
            leading: Icon(icon),
            title: Text(title),
          )),
    );
  }
}
