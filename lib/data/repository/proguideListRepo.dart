import 'package:get/get.dart';
import 'package:pro_konnect/data/api/api_Client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/appConstants.dart';

class ProguideListRepo extends GetxService {
  final ApiClient apiClient;

  ProguideListRepo({required this.apiClient});

  Future<Response> getProguideList() async {
    return apiClient.getData(AppConstants.PROGUID_LIST,
        userID: (AppConstants.UserID));
  }
}
