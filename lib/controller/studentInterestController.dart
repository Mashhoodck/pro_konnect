import 'package:get/get.dart';
import 'package:pro_konnect/data/repository/studentInterestsRepo.dart';

import '../Students/studentsScreens/profileScreens/navigationItemScreen/intrestsScreen.dart';
import '../model/studentInterests.dart';

class StudentInterestController extends GetxController {
  final StudentInterestsRepo studentInterestsRepo;

  StudentInterestController({required this.studentInterestsRepo});

  List<dynamic> _interestList = [];
  List<dynamic> get interestList => _interestList;

  Future<void> getStudenInterests() async {
    Response response = await studentInterestsRepo.getStudentInterests();
    if (response.statusCode == 200) {
      response.body;
      _interestList = [];
      _interestList.addAll(StudentInterests.fromJson(response.body).interests);
      update();
    } else {}
  }
}
