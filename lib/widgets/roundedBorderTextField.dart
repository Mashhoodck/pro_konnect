import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/dimensions.dart';

class RoundedBorderTextField extends StatelessWidget {
  final String textFielHintTitle;
  final bool writeAccess;
  final Widget? sufixIcon;
  final String labelText;
  final int? labelInt;
  final bool visiblity;

  final TextEditingController? textControllar;
  const RoundedBorderTextField(
      {Key? key,
      this.textFielHintTitle = "",
      this.writeAccess = false,
      this.sufixIcon,
      this.labelText = "",
      this.textControllar,
      this.labelInt,
      this.visiblity = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Visibility(
      visible: visiblity,
      child: Container(
        margin: EdgeInsets.only(
            left: Dimensions.width20, right: Dimensions.width20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width10,
                  right: Dimensions.width10,
                  top: Dimensions.height10,
                  bottom: Dimensions.font20),
              child: Text(
                textFielHintTitle,
              ),
            ),
            TextField(
              readOnly: writeAccess,
              controller: textControllar,
              autocorrect: true,
              decoration: InputDecoration(
                  hintText: labelText,
                  // label: Text(
                  //   labelText,
                  //   style: TextStyle(color: Colors.black),
                  // ),
                  suffixIcon: sufixIcon,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(Dimensions.radius20)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 104, 104, 104), width: 1)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
