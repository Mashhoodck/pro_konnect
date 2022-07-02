import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/dimensions.dart';

class RectangleContainer extends StatelessWidget {
  final Widget child;
  const RectangleContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: child,
      width: Dimensions.width150,
      height: Dimensions.height45,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(Dimensions.radius15)),
    );
  }
}
