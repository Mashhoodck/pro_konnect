import 'package:get/get.dart';

class FilterProguidesController extends GetxController {
  var filter = "".obs;

  onChangedFiterProguide(var filterProguide) {
    filter.value = filterProguide;
  }
}
