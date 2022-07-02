import 'package:get/get.dart';
import 'package:pro_konnect/data/repository/createProjectRepo.dart';
import 'package:pro_konnect/model/createProjectModel.dart';
import 'package:pro_konnect/model/responseModel.dart';

class CreateProjectController extends GetxController implements GetxService {
  final CreateProjectRepo createProjectRepo;

  CreateProjectController({required this.createProjectRepo});
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ResponseModel> createProject(
      CreateProjectModel createProjectModel) async {
    Response response =
        await createProjectRepo.postCreateProject(createProjectModel);
    print(createProjectModel);

    late ResponseModel responseModel;

    if (response.statusCode == 200) {
      responseModel = ResponseModel(true, response.body);
    } else {
      responseModel = ResponseModel(
        false,
        response.statusText!,
      );
    }
    return responseModel;
  }
}
