import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/projectCreate/projectList.dart';
import 'package:pro_konnect/base/showCustomSnackbar.dart';
import 'package:pro_konnect/controller/createProjectController.dart';
import 'package:pro_konnect/model/createProjectModel.dart';
import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/RoundedBorderTextField.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/headerProfileWidget.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';

class CreateProject extends StatefulWidget {
  const CreateProject({Key? key}) : super(key: key);

  @override
  State<CreateProject> createState() => _CreateProjectState();
}

class _CreateProjectState extends State<CreateProject> {
  DateTime date = DateTime(2022, 04, 12);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var contryController = TextEditingController();
    var proguideNameController = TextEditingController();
    var specializationController = TextEditingController();
    var startDateController = TextEditingController();
    var endDateController = TextEditingController();

    void createProject() {
      var createProject = Get.find<CreateProjectController>();
      String country = contryController.text.trim();
      // int proGuideId = proguideNameController.text.toString() ;
      String specialization = specializationController.text.trim();
      String startDate = startDateController.text.trim();
      String endDate = endDateController.text.trim();

      CreateProjectModel createProjectModel = CreateProjectModel(
          contry: country,
          // proguideId: proGuideId,
          specialization: specialization,
          startDate: startDate,
          endDate: endDate);

      createProject.createProject(createProjectModel).then((status) {
        if (status.isSuccess) {
          print("Created Project Succesfully");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProjectList()));
        } else {
          showCustomSnackBar(status.message, bannerColor: Colors.redAccent);
        }
      });
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeaderConiatiner(
                tapBack: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Text("CREATE PROJECT"),
              SizedBox(
                height: Dimensions.height20,
              ),
              RoundedBorderTextField(
                labelText: "Country",
                textControllar: contryController,
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              RoundedBorderTextField(
                labelText: "Name of Proguide",
                textControllar: proguideNameController,
              ),
              RoundedBorderTextField(
                labelText: "Specialization",
                textControllar: specializationController,
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: Dimensions.width150,
                        child: RoundedBorderTextField(
                          labelText: " Start Date",
                          textControllar: startDateController,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: Dimensions.width150,
                        child: RoundedBorderTextField(
                          labelText: "End Date",
                          textControllar: endDateController,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: Dimensions.height20),
              Container(
                padding:
                    EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 20),
                child: ButtonRounded(
                  btnText: "Create ",
                  btnColor: AppColors.mainColor,
                  btnWidth: double.maxFinite,
                  btnTextColor: Colors.white,
                  btnClick: () {
                    createProject();
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ProjectList()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
