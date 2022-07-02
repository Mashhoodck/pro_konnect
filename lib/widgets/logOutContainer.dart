import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoutContainer extends StatelessWidget {
  const LogoutContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Logout"),
          SizedBox(
            width: size.width * 0.03,
          ),
          SvgPicture.asset("assets/icons/logout.svg")
        ],
      ),
    );
  }
}
