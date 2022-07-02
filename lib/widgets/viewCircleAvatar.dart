import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/dimensions.dart';

class ViewProfileAvatar extends StatelessWidget {
  final String imagePath;
  const ViewProfileAvatar({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: Dimensions.height80,
      width: Dimensions.height80,
      child: Container(
        // decoration: BoxDecoration(
        //     boxShadow: [BoxShadow(blurRadius: 2, color: Colors.blue)],
        //     borderRadius: BorderRadius.circular(81),
        //     border: Border.all(color: Colors.blue, width: 2)),
        child: CircleAvatar(
          radius: 200,
          backgroundImage: AssetImage(imagePath),
        ),
      ),
    );
  }
}
