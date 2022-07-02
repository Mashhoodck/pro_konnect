import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_tag_editor/tag_editor.dart';
import 'package:pro_konnect/Students/choosetype.dart';
import 'package:pro_konnect/Students/studentsScreens/loginRegistration/otpVerification.dart';
import 'package:pro_konnect/base/showCustomSnackbar.dart';
import 'package:pro_konnect/controller/authController.dart';
import 'package:pro_konnect/model/signup_body_model.dart';

import 'package:pro_konnect/utils/colors.dart';
import 'package:pro_konnect/utils/dimensions.dart';
import 'package:pro_konnect/widgets/RoundedBorderTextField.dart';
import 'package:pro_konnect/widgets/buttonRounded.dart';
import 'package:pro_konnect/widgets/circleAvatarProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class RegistrationStudent extends StatefulWidget {
  final String? selectedUser;
  final String? refferalCode;

  const RegistrationStudent({
    Key? key,
    required this.selectedUser,
    this.refferalCode,
  }) : super(key: key);

  @override
  State<RegistrationStudent> createState() => _RegistrationStudentState();
}

class _RegistrationStudentState extends State<RegistrationStudent> {
  File? image;
  // final picker = ImagePicker();
  // final ImagePicker _picker = ImagePicker();

  List<String> values = [];
  List<String> interstsValues = [];
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _intrestsEditingController =
      TextEditingController();

  _onDelete(index) {
    setState(() {
      values.removeAt(index);
    });
  }

  _onInterestDelete(index) {
    setState(() {
      interstsValues.removeAt(index);
    });
  }

  // / This is just an example for using `TextEditingController` to manipulate
  // / the the `TextField` just like a normal `TextField`.
  _onPressedModifyTextField() {
    final text = 'Test';
    _textEditingController.text = text;
    _textEditingController.value = _textEditingController.value.copyWith(
      text: text,
      selection: TextSelection(
        baseOffset: text.length,
        extentOffset: text.length,
      ),
    );
  }

  _onPressedModifyInterestTextField() {
    final text = 'Test';
    _intrestsEditingController.text = text;
    _intrestsEditingController.value = _intrestsEditingController.value
        .copyWith(
            text: text,
            selection: TextSelection(
                baseOffset: text.length, extentOffset: text.length));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    print(widget.refferalCode);

    String student = User.student.toString();
    String proguide = User.proguide.toString();
    bool isSlected = false;

    var fullNameController = TextEditingController();
    var emailController = TextEditingController();
    var countryController = TextEditingController();

    var universityController = TextEditingController();
    var intrestController = TextEditingController();
    var specializationController = TextEditingController();
    var signupImages = [
      "t.png",
      "f.png"
          "g.png"
    ];

    void _registration() {
      var authController = Get.find<AuthController>();
      String name = fullNameController.text.trim();
      String email = emailController.text.trim();
      String counrty = countryController.text.trim();
      List<String> qualificaton = values.toList();
      List<String> interests = interstsValues.toList();
      String university = universityController.text.trim();
      print(interests);

      String specializationController = intrestController.text.trim();

      if (name.isEmpty) {
        showCustomSnackBar("Type in your name ,",
            title: "Name", bannerColor: Colors.red);
      } else if (email.isEmpty) {
        showCustomSnackBar("Type in your email ,",
            title: "Email", bannerColor: Colors.red);
      } else if (!GetUtils.isEmail(email)) {
        showCustomSnackBar("Type in a valid email address ,",
            title: "Valid email address", bannerColor: Colors.red);
      } else if (counrty.isEmpty) {
        showCustomSnackBar("Type in your country ,",
            title: "Country", bannerColor: Colors.red);
        // } else if (qualification.isEmpty) {
        //   showCustomSnackBar(
        //     "Type in your qualification ,",
        //     title: "Qualification",
        //     bannerColor: Colors.red,
        //   );
      } else if (university.isEmpty) {
        showCustomSnackBar("Type in your university ,",
            title: "University", bannerColor: Colors.red);
      } else {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => OTPVerificationPro()));
        SignupBody signupBody = SignupBody(
          role: student,
          photo: image,
          name: name,
          email: email,
          country: counrty,
          university: university,
          qualification: qualificaton,
          interests: interests,
        );

        authController.registration(signupBody).then((status) {
          if (status.isSuccess) {
            print("Registration Success");
          } else {
            showCustomSnackBar(status.message, bannerColor: Colors.redAccent);
          }
        });
      }
    }

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          children: [
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            //   child: BackButtonTop(
            //     vetorIcon: "'assets/icons/back_back.svg'",
            //   ),
            // )
          ],
        ),
      ),
      body: GetBuilder<AuthController>(builder: (_authController) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Dimensions.height20,
              ),
              ButtonRounded(
                btnText: "Student Registration",
                btnTextColor: Colors.white,
                btnColor: AppColors.mainColor,
                btnWidth: Dimensions.width150,
                btnClick: () {},
              ),
              ButtonRounded(
                btnText: "Proguide Registration",
                btnTextColor: Colors.black,
                btnColor: Color.fromARGB(255, 230, 224, 224),
                btnWidth: Dimensions.width150,
                btnClick: () {},
              ),
              SizedBox(
                height: Dimensions.height20,
              ),

              CirleAvatarProfile(
                imagepick: () {
                  print("clicked");
                  showModalBottomSheet(
                      context: context, builder: (builder) => bottomSheet());
                },
                clipImage: ClipOval(
                  child: (image != null)
                      ? Image.file(image!)
                      : Image.asset('images/newimage.png'),
                ),
              ),

              SizedBox(
                height: Dimensions.height20,
              ),
              RoundedBorderTextField(
                textControllar: fullNameController,
                textFielHintTitle: "Full Name *",
              ),
              RoundedBorderTextField(
                textControllar: emailController,
                textFielHintTitle: "Email Address *",
              ),
              RoundedBorderTextField(
                textControllar: countryController,
                textFielHintTitle: "Country *",
                sufixIcon: Icon(Icons.arrow_drop_down),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),

              TagsTextEditor(size),
              TagsTextEditorInterests(size),

              // Container(
              //   height: 100,
              //   child: MaterialTags(
              //     textEditingController: qualificationController,
              //     values: valueData,
              //     // values: valueData,
              //   ),
              // ),
              // MaterialTags(),

              RoundedBorderTextField(
                textControllar: universityController,
                textFielHintTitle: "University *",
              ),
              RoundedBorderTextField(
                textControllar: intrestController,
                sufixIcon: Icon(Icons.add_circle_rounded),
                textFielHintTitle: "Your Interests *",
              ),
              RoundedBorderTextField(
                visiblity: widget.selectedUser == student ? false : true,
                textControllar: specializationController,
                sufixIcon: Icon(Icons.add_circle_rounded),
                textFielHintTitle: "Specializations *",
              ),

              SizedBox(
                height: Dimensions.height10,
              ),

              //check box for agree
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (bool) {}),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "By checking the box, you agree to the ProKonnect"),
                            Text(
                              "Privacy Policy",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: ButtonRounded(
                  btnText: "Register",
                  btnColor: AppColors.mainColor,
                  btnWidth: double.maxFinite,
                  btnTextColor: Colors.white,
                  btnClick: () {
                    _registration();
                  },
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already registered ?"),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  GestureDetector(
                    onTap: () {
                      showCustomSnackBar("Network Error,",
                          title: "Please check your Internet",
                          bannerColor: Colors.red);
                    },
                    child: GestureDetector(
                      onTap: () {
                        showCustomSnackBar("Network Error,",
                            title: "Please check your Internet",
                            bannerColor: Colors.red);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Dimensions.height30,
              )
            ],
          ),
        );
      }),
    ));
  }

  Container TagsTextEditor(Size size) {
    return Container(
      margin:
          EdgeInsets.only(left: size.width * 0.04, right: size.width * 0.04),
      height: size.height * 0.1,
      child: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                  top: size.width * 0.03,
                  bottom: size.width * 0.03),
              child: TagEditor(
                length: values.length,
                controller: _textEditingController,
                focusNode: _focusNode,
                delimiters: [',', ' '],
                hasAddButton: true,
                resetTextOnSubmitted: true,
                // This is set to grey just to illustrate the `textStyle` prop
                textStyle: const TextStyle(color: Colors.grey),
                onSubmitted: (outstandingValue) {
                  setState(() {
                    values.add(outstandingValue);
                  });
                },
                inputDecoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Qualification...',
                ),
                onTagChanged: (newValue) {
                  setState(() {
                    values.add(newValue);
                  });
                },
                tagBuilder: (context, index) => _Chip(
                  index: index,
                  label: values[index],
                  onDeleted: _onDelete,
                ),
                // InputFormatters example, this disallow \ and /
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'[/\\]'))
                ],
              ),
            ),
          ),

          // This is just a button to illustrate how to use
          // TextEditingController to set the value
          // or do whatever you want with it
        ],
      ),
    );
  }

  //interests

  Container TagsTextEditorInterests(Size size) {
    return Container(
      margin:
          EdgeInsets.only(left: size.width * 0.04, right: size.width * 0.04),
      height: size.height * 0.1,
      child: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                  top: size.width * 0.03,
                  bottom: size.width * 0.03),
              child: TagEditor(
                length: interstsValues.length,
                controller: _intrestsEditingController,
                focusNode: _focusNode,
                delimiters: [',', ' '],
                hasAddButton: true,
                resetTextOnSubmitted: true,
                // This is set to grey just to illustrate the `textStyle` prop
                textStyle: const TextStyle(color: Colors.grey),
                onSubmitted: (outstandingValue) {
                  setState(() {
                    interstsValues.add(outstandingValue);
                  });
                  print(interstsValues);
                },
                inputDecoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Interests...',
                ),
                onTagChanged: (newValue) {
                  setState(() {
                    interstsValues.add(newValue);
                  });
                },
                tagBuilder: (context, index) => _Chiptwo(
                  index: index,
                  label: interstsValues[index],
                  oninterestDeleted: _onInterestDelete,
                ),
                // InputFormatters example, this disallow \ and /
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'[/\\]'))
                ],
              ),
            ),
          ),

          // This is just a button to illustrate how to use
          // TextEditingController to set the value
          // or do whatever you want with it
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Text(
            "Choose Profile Photo",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ElevatedButton.icon(
              //     onPressed: () {},
              //     icon: Icon(Icons.camera),
              //     label: Text("Camera")),
              // SizedBox(
              //   width: 20,
              // ),
              ElevatedButton.icon(
                  onPressed: () {
                    pickImage();
                  },
                  icon: Icon(Icons.image),
                  label: Text("Image"))
            ],
          )
        ],
      ),
    );
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
      print(imageTemp);
    } on PlatformException catch (e) {
      print('Failed tp pick Image: $e');
    }
  }

  // void takePhoto(ImageSource source) async {
  //   final pickedFile = await _picker.getImage(source: source);
  //   setState(() {
  //     _imagefile = pickedFile;
  //   });
  // }
}

class _Chip extends StatelessWidget {
  final String label;
  final ValueChanged<int> onDeleted;

  final int index;
  const _Chip({
    required this.label,
    required this.onDeleted,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsets.only(left: 8.0),
      label: Text(label),
      deleteIcon: Icon(
        Icons.close,
        size: 18,
      ),
      onDeleted: () {
        onDeleted(index);
      },
    );
  }
}

class _Chiptwo extends StatelessWidget {
  final String label;
  final ValueChanged<int> oninterestDeleted;

  final int index;
  const _Chiptwo({
    required this.label,
    required this.oninterestDeleted,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsets.only(left: 8.0),
      label: Text(label),
      deleteIcon: Icon(
        Icons.close,
        size: 18,
      ),
      onDeleted: () {
        oninterestDeleted(index);
      },
    );
  }
}
