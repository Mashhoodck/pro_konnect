import 'package:get/get.dart';
import 'package:pro_konnect/data/api/api_Client.dart';
import 'package:pro_konnect/model/createProjectModel.dart';
import 'package:pro_konnect/utils/appConstants.dart';

class CreateProjectRepo extends GetxService {
  final ApiClient apiClient;

  CreateProjectRepo({required this.apiClient});

  Future<Response> postCreateProject(CreateProjectModel createProjectModel) {
    return apiClient.postData(
        AppConstants.CREATE_PROJECT, createProjectModel.toJson());
  }
}
