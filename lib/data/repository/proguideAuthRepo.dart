import 'package:get/get.dart';
import 'package:pro_konnect/data/api/api_Client.dart';
import 'package:pro_konnect/model/signup_body_model.dart';
import 'package:pro_konnect/utils/appConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProguideAuthRepo {
  final ApiClient apiClient;

  final SharedPreferences sharedPreferences;

  ProguideAuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> registration(SignupBody signupBody) async {
    return await apiClient.postData(
        AppConstants.PROGUIDE_REGISTRATION, signupBody.toJson());
  }

  Future<String> getUserTocken() async {
    return await sharedPreferences.getString(AppConstants.TOKEN) ?? "None";
  }

  Future<String> getUserrole() async {
    return await sharedPreferences.getString(AppConstants.selectedUser) ??
        "user";
  }

  Future<Response> login(String email, String password) async {
    return await apiClient.postData(
        AppConstants.PROGUIDE_LOGIN, {"email": email, "password": password});
  }

  Future<bool> saveUserToken(String token) async {
    apiClient.token = token;
    apiClient.updateHeader(token);
    print(token);

    return await sharedPreferences.setString(AppConstants.TOKEN, token);
  }

  Future<bool> userRole(String userRole) async {
    apiClient.userRole = userRole;
    return await sharedPreferences.setString(
        AppConstants.selectedUser, userRole);
  }

  Future<bool> id(String userID) async {
    apiClient.userId = userID;
    print("check auth $userID");
    return await sharedPreferences.setString('userId', AppConstants.UserID);
  }

  // Future<void> userID(int userID) async {
  //   apiClient.userId = userID;
  //   print("userIdhere $userID");
  // }

  Future<void> saveStudentIdAndPassword(
      String studentId, String password) async {
    try {
      await sharedPreferences.setString(AppConstants.STUDENTID, studentId);
      await sharedPreferences.setString(AppConstants.PASSWORD, password);
    } catch (e) {
      throw e;
    }
  }

  bool userLoggedin() {
    return sharedPreferences.containsKey(AppConstants.TOKEN);
  }

  bool clearsharedData() {
    sharedPreferences.remove(AppConstants.TOKEN);
    sharedPreferences.remove(AppConstants.STUDENTID);
    sharedPreferences.remove(AppConstants.PASSWORD);
    apiClient.token = '';
    apiClient.updateHeader('');
    return true;
  }
}
