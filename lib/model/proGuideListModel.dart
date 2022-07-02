class ProguideListModel {
  int? _responseStatus;
  String? _message;
  late List<Proguides> _proguides;
  List<dynamic> get proguides => _proguides;

  ProguideListModel(
      {required responseStatus, required message, required proguides}) {
    this._responseStatus = responseStatus;
    this._message = message;
    this._proguides = proguides;
  }

  // ProguideListModel.fromJson(Map<String, dynamic> json) {
  //   _responseStatus = json['response_status'];
  //   _message = json['message'];
  //   if (json['proguides'] != null) {
  //     _proguides = <Proguides>[];
  //     json['proguides'].forEach((v) {
  //       _proguides!.add(new Proguides.fromJson(v));
  //     });
  //   }
  // }

  factory ProguideListModel.fromJson(Map<String, dynamic> json) {
    return ProguideListModel(
        responseStatus: json['response_status'] as int,
        message: json['message'] as String,
        proguides: (json['proguides'] as List<dynamic>)
            .cast<Map<String, dynamic>>()
            .map((e) => Proguides.fromJson(e))
            .toList());
  }
}

class Proguides {
  String? proguideId;
  String? name;
  String? email;
  String? photo;

  Proguides({this.proguideId, this.name, this.email, this.photo}) {}

  // Proguides.fromJson(Map<String, dynamic> json) {
  //   proguideId = json['proguideId'];
  //   name = json['name'];
  //   email = json['email'];
  //   photo = json['photo'];
  // }

  factory Proguides.fromJson(Map<String, dynamic> json) {
    return Proguides(
        proguideId: json['proguideId'] as String,
        name: json['name'] as String,
        email: json['email'] as String,
        photo: json['photo'] as String);
  }
}
