import 'package:get/get.dart';
import 'package:pro_konnect/utils/appConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late Map<String, String> _mainHeaders;
  late SharedPreferences sharedPreferences;
  late String userRole;
  late String userId;

  ApiClient(
      {required this.appBaseUrl, required this.sharedPreferences, required}) {
    baseUrl = appBaseUrl;

    token = sharedPreferences.getString(AppConstants.TOKEN) ?? "";

    _mainHeaders = {
      'Content-Type': 'application/json, charset=utf-8',
      'Accept': 'application/json',
      'Authorization': token,
    };
  }

  void updateHeader(String token) {
    _mainHeaders = {
      'Content-Type': 'application/json, charset=utf-8',
      'Accept': 'application/json',
      'Authorization': token,
    };

    print(token);
  }
  // getMethod

  Future<Response> getData(String url,
      {String? userID, Map<String, String>? headers}) async {
    print(" $userId");
    try {
      Response response = await get(url, headers: _mainHeaders);

      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> postData(String uri, dynamic body) async {
    try {
      Response response = await post(uri, body, headers: _mainHeaders);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
