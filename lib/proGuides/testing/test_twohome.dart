import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/homeScreen.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/roundedTextFieldWhite.dart';

class TestHome extends StatelessWidget {
  const TestHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.separated(
                itemBuilder: (context, index) => Text("data"),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: 10),
          ),
        ],
      ),
    );
  }
}
