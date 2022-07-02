import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/controller/authController.dart';
import 'package:pro_konnect/utils/colors.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Loading" + Get.find<AuthController>().isLoading.toString());
    var size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width * 0.2,
        height: size.height * 0.1,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(50),
            color: AppColors.mainColor),
        alignment: Alignment.center,
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
