import 'package:get/get.dart';
import 'package:pro_konnect/model/responseModel.dart';
import 'package:pro_konnect/model/userProfile.dart';

import '../data/repository/userprofileRepo.dart';

class UserProfileDataController extends GetxController implements GetxService {
  final UserProfileRepo userProfileRepo;

  UserProfileDataController({required this.userProfileRepo});

  late UserProfileModel _userProfileModel;
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  UserProfileModel get userProfileModel => _userProfileModel;

  Future<ResponseModel> getUserProfileDetails() async {
    Response response = await userProfileRepo.getUserProfileDetails();
    late ResponseModel responseModel;
    response.body;
    if (response.statusCode == 200) {
      _isLoading = true;
      update();

      _userProfileModel = UserProfileModel.fromJson(response.body);

      responseModel = ResponseModel(true, "Successfully");
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }

    update();

    return responseModel;
  }
}
