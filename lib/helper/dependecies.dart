import 'package:get/get.dart';
import 'package:pro_konnect/controller/authController.dart';
import 'package:pro_konnect/controller/createProjectController.dart';
import 'package:pro_konnect/controller/planListController.dart';
import 'package:pro_konnect/controller/proguideListController.dart';
import 'package:pro_konnect/controller/refferalListController.dart';
import 'package:pro_konnect/controller/studentInterestController.dart';
import 'package:pro_konnect/controller/userProfileController.dart';
import 'package:pro_konnect/data/api/api_Client.dart';
import 'package:pro_konnect/data/repository/authRepo.dart';
import 'package:pro_konnect/data/repository/planLIstRepo.dart';
import 'package:pro_konnect/data/repository/proguideAuthRepo.dart';
import 'package:pro_konnect/data/repository/proguideListRepo.dart';
import 'package:pro_konnect/data/repository/refferalListRepo.dart';
import 'package:pro_konnect/data/repository/refferal_code-repository.dart';
import 'package:pro_konnect/data/repository/studentInterestsRepo.dart';
import 'package:pro_konnect/data/repository/userprofileRepo.dart';
import 'package:pro_konnect/utils/appConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller/proguideAuthController.dart';
import '../data/repository/createProjectRepo.dart';

Future<void> init() async {
  //sharedpreferences

  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);

  //api client
  Get.lazyPut(() => ApiClient(
      appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));

//repository
  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() =>
      ProguideAuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));

  Get.lazyPut(() => UserProfileRepo(apiClient: Get.find()));

  Get.lazyPut(() => ProguideListRepo(apiClient: Get.find()));
  Get.lazyPut(() => PlanListRepo(apiClient: Get.find()));
  Get.lazyPut(() => CreateProjectRepo(apiClient: Get.find()));
  Get.lazyPut(() => StudentInterestsRepo(apiClient: Get.find()));
  Get.lazyPut(() => RefferalListRepository(apiClient: Get.find()));

  //controller

  Get.lazyPut(() => UserProfileDataController(userProfileRepo: Get.find()));
  Get.lazyPut(() => ProguideAuthController(authRepo: Get.find()));
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(() => ProguideListController(proguideListRepo: Get.find()));
  Get.lazyPut(() => PlanListController(planListRepo: Get.find()));
  Get.lazyPut(() => CreateProjectController(createProjectRepo: Get.find()));
  Get.lazyPut(
      () => StudentInterestController(studentInterestsRepo: Get.find()));

  Get.lazyPut(() => RefferalListController(refferalRepo: Get.find()));
}
