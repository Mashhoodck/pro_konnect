class StudentInterests {
  int? _responseStatus;
  String? _message;
  late List<InterestsModel> _interests;

  List<InterestsModel> get interests => _interests;

  StudentInterests(
      {required responseStatus, required message, required interests}) {
    this._responseStatus = responseStatus;
    this._message = message;
    this._interests = interests;
  }

  factory StudentInterests.fromJson(Map<String, dynamic> json) {
    return StudentInterests(
        responseStatus: json['response_status'] as int,
        message: json['message'] as String,
        interests: (json['interests'] as List<dynamic>)
            .cast<Map<String, dynamic>>()
            .map((e) => InterestsModel.fromJson(e))
            .toList());
  }

  // StudentInterests.fromJson(Map<String, dynamic> json) {
  //   return _responseStatus = json['response_status'];
  //   _message = json['message'];
  //   if (json['interests'] != null) {
  //     _interests = <InterestsModel>[];
  //     json['interests'].forEach((v) {
  //       _interests!.add(new InterestsModel.fromJson(v));
  //     });
  //   }
  // }
}

class InterestsModel {
  String? id;
  String? name;

  InterestsModel({this.id, this.name});

  InterestsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}
