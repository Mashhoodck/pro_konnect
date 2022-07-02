import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:pro_konnect/data/repository/planLIstRepo.dart';
import 'package:pro_konnect/model/planListModel.dart';

class PlanListController extends GetxController {
  final PlanListRepo planListRepo;

  PlanListController({required this.planListRepo});
  List<dynamic> _studentPlanList = [];
  List<dynamic> get studentPlanList => _studentPlanList;

  Future<void> getStudentPlanList() async {
    Response response = await planListRepo.getPlanLists();
    if (response.statusCode == 200) {
      // print(response.body);
      // print('bodyPrinted');
      _studentPlanList = [];
      _studentPlanList.addAll(PlansModel.fromJson(response.body).planList);

      print("printed value $_studentPlanList");
      print("listofplanshere");

      update();
    } else {}
  }
}
