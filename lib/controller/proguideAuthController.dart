import 'package:get/get.dart';
import 'package:pro_konnect/data/repository/authRepo.dart';
import 'package:pro_konnect/data/repository/proguideAuthRepo.dart';
import 'package:pro_konnect/model/responseModel.dart';
import 'package:pro_konnect/model/signup_body_model.dart';

class ProguideAuthController extends GetxController implements GetxService {
  final ProguideAuthRepo authRepo;
  ProguideAuthController({required this.authRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ResponseModel> registration(SignupBody signupBody) async {
    print(signupBody);
    print(signupBody.photo);
    _isLoading = true;
    update();

    Response response = await authRepo.registration(signupBody);

    late ResponseModel responseModel;

    if (response.statusCode == 200) {
      authRepo.saveUserToken(response.body["token"]);
      responseModel = ResponseModel(true, response.body["token"]);
    } else {
      responseModel = ResponseModel(
        false,
        response.statusText!,
      );
    }
    _isLoading = false;

    update();

    return responseModel;
  }

  Future<ResponseModel> login(String email, String password) async {
    _isLoading = true;
    update();

    Response response = await authRepo.login(email, password);

    late ResponseModel responseModel;

    if (response.statusCode == 200) {
      print(response.body);
      authRepo.saveUserToken(response.body['token']);
      authRepo.userRole(response.body['role']);
      authRepo.id(response.body['userId']);

      responseModel = ResponseModel(true, response.body['token'],
          role: response.body['role'], userId: response.body['userId']);

      print("Response userid ${responseModel.userId}");
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;

    update();

    return responseModel;
  }

  void saveStudentIdAndPassword(
      String token, String studentId, String password) {
    authRepo.saveStudentIdAndPassword(studentId, password);
  }

  bool userLoggedin() {
    return authRepo.userLoggedin();
  }

  bool clearSharedData() {
    return authRepo.clearsharedData();
  }
}
