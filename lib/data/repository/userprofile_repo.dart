import 'package:get/get.dart';
import 'package:pro_konnect/data/api/api_Client.dart';
import 'package:pro_konnect/utils/appConstants.dart';

class UserProfileRepository extends GetxService {
  final ApiClient apiClient;

  UserProfileRepository({required this.apiClient});

  Future<Response> getUserProfile() async {
    return await apiClient.getData(AppConstants.STUDENT_PROFILE,
        userID: AppConstants.UserID);
  }
}
