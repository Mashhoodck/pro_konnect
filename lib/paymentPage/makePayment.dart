import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/utils/appConstants.dart';

class MakePayment {
  MakePayment(this.context, this.price, this.userId, this.email);

  BuildContext context;
  int price;
  int userId;
  String email;

  PaystackPlugin paytack = PaystackPlugin();

  String _getReference() {
    String platform;
    if (Platform.isIOS) {
      platform = 'iOS';
    } else {
      platform = 'Android';
    }

    return 'ChargedFrom${platform}_${DateTime.now().millisecondsSinceEpoch}';
  }

  //Get cardUI

  PaymentCard _getCardUi() {
    return PaymentCard(number: "", cvc: "", expiryMonth: 0, expiryYear: 0);
  }

  Future initializePlugin() async {
    await paytack.initialize(publicKey: AppConstants.PAY_STACK_KEY);
  }

  plsnschargeAndMakePayment() async {
    initializePlugin().then((_) async {
      Charge charge = Charge()
        ..amount = price * 100
        ..email = email
        ..reference = _getReference()
        ..card = _getCardUi();

      CheckoutResponse response = await paytack.checkout(context,
          charge: charge,
          method: CheckoutMethod.card,
          fullscreen: false,
          logo: FlutterLogo(
            size: 24,
          ));

      print("Response $response");

      if (response.status == true) {
        print("Transaction Sucessful");
      } else {
        print("Transaction Failed");
      }
    });
  }
}
