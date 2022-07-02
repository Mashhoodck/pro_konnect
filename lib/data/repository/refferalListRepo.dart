import 'package:get/get.dart';
import 'package:pro_konnect/data/api/api_Client.dart';

import '../../utils/appConstants.dart';

class RefferalListRepository extends GetxService {
  final ApiClient apiClient;

  RefferalListRepository({required this.apiClient});

  Future<Response> getRefferalList() async {
    return apiClient.getData(AppConstants.STUDENT_REFFERAL_LIST,
        userID: AppConstants.UserID);
  }
}
