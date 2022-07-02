class UserProfileModel {
  int? _responseStatus;
  String? _message;
  String? _userId;
  String? _name;
  String? _email;
  String? _role;
  String? _country;
  String? _photo;
  String? _university;
  List<Qualification>? _qualification;
  List<Interest>? _interest;

  UserProfileModel(
      {int? responseStatus,
      String? message,
      String? userId,
      String? name,
      String? email,
      String? role,
      String? country,
      String? photo,
      String? university,
      List<Qualification>? qualification,
      List<Interest>? interest}) {
    if (responseStatus != null) {
      this._responseStatus = responseStatus;
    }
    if (message != null) {
      this._message = message;
    }
    if (userId != null) {
      this._userId = userId;
    }
    if (name != null) {
      this._name = name;
    }
    if (email != null) {
      this._email = email;
    }
    if (role != null) {
      this._role = role;
    }
    if (country != null) {
      this._country = country;
    }
    if (photo != null) {
      this._photo = photo;
    }
    if (university != null) {
      this._university = university;
    }
    if (qualification != null) {
      this._qualification = qualification;
    }
    if (interest != null) {
      this._interest = interest;
    }
  }

  int? get responseStatus => _responseStatus;
  set responseStatus(int? responseStatus) => _responseStatus = responseStatus;
  String? get message => _message;
  set message(String? message) => _message = message;
  String? get userId => _userId;
  set userId(String? userId) => _userId = userId;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get role => _role;
  set role(String? role) => _role = role;
  String? get country => _country;
  set country(String? country) => _country = country;
  String? get photo => _photo;
  set photo(String? photo) => _photo = photo;
  String? get university => _university;
  set university(String? university) => _university = university;
  List<Qualification>? get qualification => _qualification;
  set qualification(List<Qualification>? qualification) =>
      _qualification = qualification;
  List<Interest>? get interest => _interest;
  set interest(List<Interest>? interest) => _interest = interest;

  UserProfileModel.fromJson(Map<String, dynamic> json) {
    _responseStatus = json['response_status'];
    _message = json['message'];
    _userId = json['userId'];
    _name = json['name'];
    _email = json['email'];
    _role = json['role'];
    _country = json['country'];
    _photo = json['photo'];
    _university = json['university'];
    if (json['qualification'] != null) {
      _qualification = <Qualification>[];
      json['qualification'].forEach((v) {
        _qualification!.add(new Qualification.fromJson(v));
      });
    }
    if (json['interest'] != null) {
      _interest = <Interest>[];
      json['interest'].forEach((v) {
        _interest!.add(new Interest.fromJson(v));
      });
    }
  }
}

class Qualification {
  String? _name;

  Qualification({String? name}) {
    if (name != null) {
      this._name = name;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;

  Qualification.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
  }
}

class Interest {
  String? _name;

  Interest({String? name}) {
    if (name != null) {
      this._name = name;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;

  Interest.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
  }
}
