class RefferalListModel {
  int? _responseStatus;
  String? _message;
  Referral? _referral;

  RefferalListModel(
      {required responseStatus, required message, required referral}) {
    this._responseStatus = _responseStatus;
    this._message = message;
    this._referral = referral;
  }

  RefferalListModel.fromJson(Map<String, dynamic> json) {
    _responseStatus = json['response_status'];
    _message = json['message'];
    _referral = json['referral'] != null
        ? new Referral.fromJson(json['referral'])
        : null;
  }
}

class Referral {
  String? referralId;
  String? code;
  int? totalCommission;

  Referral({this.referralId, this.code, this.totalCommission});

  Referral.fromJson(Map<String, dynamic> json) {
    referralId = json['referralId'];
    code = json['code'];
    totalCommission = json['total_commission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['referralId'] = this.referralId;
    data['code'] = this.code;
    data['total_commission'] = this.totalCommission;
    return data;
  }
}
