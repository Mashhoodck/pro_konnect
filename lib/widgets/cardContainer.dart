import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget children;
  const CardContainer({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)]),
      child: children,
    );
  }
}
