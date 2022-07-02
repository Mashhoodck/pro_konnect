import 'package:get/get.dart';
import 'package:pro_konnect/data/api/api_Client.dart';
import 'package:pro_konnect/utils/appConstants.dart';

class UserProfileRepo extends GetxService {
  final ApiClient apiClient;

  UserProfileRepo({required this.apiClient});

  Future<Response> getUserProfileDetails() async {
    return await apiClient.getData(AppConstants.STUDENT_PROFILE,
        userID: AppConstants.UserID);
  }
}
