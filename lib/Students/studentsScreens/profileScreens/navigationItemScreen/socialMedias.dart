import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_konnect/widgets/roundedBorderTextField.dart';

import '../../../../utils/colors.dart';
import '../../../../widgets/RoundedBorderTextField.dart';
import '../../../../widgets/profileHeader.dart';
import '../../../../widgets/roundedTextwithAdd.dart';

class SocialMedias extends StatelessWidget {
  const SocialMedias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ProfileHeaderConiatiner(
              tapBack: () {
                Navigator.pop(context);
              },
            ),
            Container(
              height: 100,
              child: Stack(
                children: [],
              ),
            ),

            RoundedTextAdd(),
            // Container(
            //   height: 50,
            //   child: Row(
            //     children: [
            //       RoundedBorderTextField(
            //         textFielHintTitle: " Type your Link here",
            //       ),
            //     ],
            //   ),
            // ),
            Icon(
              Icons.facebook,
              color: Colors.blue,
            ),
            Icon(
              Icons.facebook,
              color: Colors.blue,
            ),
            Icon(Icons.facebook, color: Colors.blue)
          ],
        ),
      ),
    );
  }
}
