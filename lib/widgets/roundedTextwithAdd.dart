import 'package:flutter/material.dart';
import 'package:pro_konnect/widgets/roundedBorderTextField.dart';

class RoundedTextAdd extends StatelessWidget {
  const RoundedTextAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [RoundedBorderTextField()],
    );
  }
}
