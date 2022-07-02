import 'dart:developer';

import 'dart:io';

class SignupBody {
  int? responseStatus;
  String? message;
  String? userId;
  String? name;
  String? email;
  String? role;
  String? country;
  File? photo;
  String? university;
  List<String>? qualification;
  List<String>? interests;

  SignupBody(
      {this.responseStatus,
      this.message,
      this.userId,
      this.name,
      this.email,
      this.role,
      this.country,
      this.photo,
      this.university,
      this.qualification,
      this.interests});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response_status'] = this.responseStatus;
    data['message'] = this.message;
    data['userId'] = this.userId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['role'] = this.role;
    data['country'] = this.country;
    data['photo'] = this.photo;
    data['university'] = this.university;
    data['qualification'] = this.qualification;
    data['interests'] = this.interests;

    return data;
  }
}
