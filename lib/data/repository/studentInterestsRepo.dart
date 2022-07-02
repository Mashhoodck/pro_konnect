import 'package:get/get.dart';
import 'package:pro_konnect/data/api/api_Client.dart';
import 'package:pro_konnect/utils/appConstants.dart';

class StudentInterestsRepo extends GetxService {
  final ApiClient apiClient;

  StudentInterestsRepo({required this.apiClient});

  Future<Response> getStudentInterests() async {
    return apiClient.getData(AppConstants.STUDENT_INTRESTS,
        userID: AppConstants.UserID);
  }
}
