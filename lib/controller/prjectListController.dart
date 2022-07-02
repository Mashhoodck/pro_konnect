import 'package:get/get.dart';
import 'package:pro_konnect/data/repository/projectListRepo.dart';

class StudentProjectListController extends GetxController
    implements GetxService {
  final ProjectListRepo studentProjectListRepo;

  StudentProjectListController({required this.studentProjectListRepo});
}
