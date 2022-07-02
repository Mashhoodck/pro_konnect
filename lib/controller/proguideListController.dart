import 'dart:ffi';

import 'package:get/get.dart';

import 'package:pro_konnect/data/repository/proguideListRepo.dart';
import 'package:pro_konnect/model/proGuideListModel.dart';

class ProguideListController extends GetxController {
  final ProguideListRepo proguideListRepo;

  late ProguideListModel _proguideListModel;

  ProguideListController({required this.proguideListRepo});

  List<dynamic> _proguidList = [];
  List<dynamic> get proguideList => _proguidList;

  Future<void> getProguideList() async {
    Response response = await proguideListRepo.getProguideList();

    if (response.statusCode == 200) {
      _proguidList = [];
      _proguidList.addAll(ProguideListModel.fromJson(response.body).proguides);

      update();
    } else {}
  }
}
