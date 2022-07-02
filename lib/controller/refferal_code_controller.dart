import 'package:get/get.dart';
import 'package:pro_konnect/data/repository/refferal_code-repository.dart';

class RefferalCodeController extends GetxController {
  final RefferalCodeRepo refferalCodeRepo;
  RefferalCodeController({required this.refferalCodeRepo});

  List<dynamic> _refferalCodeList = [];
}
