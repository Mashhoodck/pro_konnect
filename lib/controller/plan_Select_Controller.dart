import 'package:get/get.dart';

class PlanSelectionController extends GetxController {
  var slecetdPlans = "".obs;

  onChangedPlans(var plans) {
    slecetdPlans.value = plans;
  }
}
