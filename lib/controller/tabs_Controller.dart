import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabController extends GetxController with SingleGetTickerProviderMixin {
  late TabController controller;

  final List<Tab> proChatTabs = <Tab>[
    Tab(
      text: "Student",
    ),
    Tab(text: "Proguide"),
    Tab(
      text: "Group",
    )
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    controller = TabController();
    super.onInit();
  }
}
