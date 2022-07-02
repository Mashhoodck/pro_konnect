import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<PageViewModel> getPages() {
      return [
        PageViewModel(
            image: Image.asset("assets/images/logo_pro.png"),
            title: "Home Page ",
            body: "test hello ",
            footer: Text("data")),
        PageViewModel(
            image: Image.asset("assets/images/logo_pro.png"),
            title: "Home Page ",
            body: "test hello ",
            footer: Text("data")),
        PageViewModel(
            image: Image.asset("assets/images/logo_pro.png"),
            title: "Home Page ",
            body: "test hello ",
            footer: Text("data"))
      ];
    }

    final String curvedContainer = "assets/icons/curved_rectangle.svg";
    final String proconnect_logo = "assets/images/logo_pro.png";
    final Widget cuvedBg = SvgPicture.asset(
      curvedContainer,
      fit: BoxFit.fill,
    );
    final Widget logo = Image.asset(
      proconnect_logo,
      fit: BoxFit.fill,
    );

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 301.h,
              child: Stack(
                children: [
                  cuvedBg,
                  Center(
                    child: Text(
                      "WELCOME",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            IntroductionScreen(
              done: Text("Done"),
              onDone: () {},
              pages: getPages(),
            ),
          ],
        ),
      ),
    );
  }
}
