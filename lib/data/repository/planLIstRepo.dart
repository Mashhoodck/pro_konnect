import 'package:get/get.dart';
import 'package:pro_konnect/data/api/api_Client.dart';
import 'package:pro_konnect/utils/appConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlanListRepo extends GetxService {
  final ApiClient apiClient;

  PlanListRepo({required this.apiClient});

  Future<Response> getPlanLists() async {
    return await apiClient.getData(AppConstants.STUDENT_PLAN_LIST,
        userID: AppConstants.UserID);
  }
}
