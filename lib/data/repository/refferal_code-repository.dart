import 'package:get/get.dart';
import 'package:pro_konnect/data/api/api_Client.dart';
import 'package:pro_konnect/utils/appConstants.dart';

class RefferalCodeRepo extends GetxService {
  final ApiClient apiClient;

  RefferalCodeRepo({required this.apiClient});

  Future<Response> getRefferalstudentList() async {
    return apiClient.getData(AppConstants.REFERAL_CODE);
  }
}
