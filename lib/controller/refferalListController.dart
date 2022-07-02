import 'package:get/get.dart';
import 'package:pro_konnect/data/repository/refferalListRepo.dart';

import '../model/refferalListModel.dart';

class RefferalListController extends GetxController implements GetxService {
  final RefferalListRepository refferalRepo;

  RefferalListController({required this.refferalRepo});

  List<dynamic> _refferalList = [];
  List<dynamic> get refferalList => _refferalList;

  Future<void> getReferalList() async {
    Response response = await refferalRepo.getRefferalList();

    if (response.statusCode == 200) {
      print(response.body);
      _refferalList = [];
      // _refferalList.addAll(RefferalListModel.fromJson(response.body).proguides);

      update();
    } else {}
  }
}
