// import 'package:pro_konnect/data/repository/userprofile_repo.dart';
// import 'package:pro_konnect/model/userProfile.dart';
// import 'package:get/get.dart';
// import '../data/repository/userprofileRepo.dart';
// import '../model/responseModel.dart';

// class UserProfileDetailsController extends GetxController
//     implements GetxService {
//   //
//   final UserProfileRepository userProfileinfoRepo;
//   UserProfileDetailsController({required this.userProfileinfoRepo});

//   bool _isLoading = false;
//   late UserProfile _userProfileModel;

//   bool get isLoading => _isLoading;
//   UserProfile get userProfileModel => _userProfileModel;

//   Future<ResponseModel> getUserinfo() async {
//     Response response = await userProfileinfoRepo.getUserProfile();

//     late ResponseModel responseModel;
//     print("NewResponse here" + response.body.toString());

//     if (response.statusCode == 200) {
//       _userProfileModel = UserProfile.fromJson(response.body);
//       _isLoading = true;

//       responseModel = ResponseModel(true, 'successfully');
//     } else {
//       responseModel = ResponseModel(false, response.statusText!);
//     }
//     _isLoading = false;

//     update();

//     return responseModel;
//   }
// }
