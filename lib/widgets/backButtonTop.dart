import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_konnect/utils/dimensions.dart';

class BackButtonTop extends StatelessWidget {
  final Color backArroText;
  final String vetorIcon;
  final VoidCallback backBtnclick;
  const BackButtonTop(
      {this.backArroText = Colors.black,
      required this.vetorIcon,
      required this.backBtnclick});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: backBtnclick,
      child: Container(
        child: Row(
          children: [
            SvgPicture.asset(vetorIcon),
            SizedBox(
              width: Dimensions.width10,
            ),
            Text("Back",
                style: TextStyle(
                  color: backArroText,
                ))
          ],
        ),
      ),
    );
  }
}
