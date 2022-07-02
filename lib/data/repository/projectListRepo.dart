import 'package:get/get.dart';
import 'package:pro_konnect/utils/appConstants.dart';

import '../api/api_Client.dart';

class ProjectListRepo extends GetxService {
  final ApiClient apiClient;

  ProjectListRepo({required this.apiClient});

  Future<Response> getPrjectList() async {
    return apiClient.getData(AppConstants.STUDENT_PROJECT_LISTS,
        userID: AppConstants.UserID);
  }
}
