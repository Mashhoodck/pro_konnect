class StudentBankDeatils {
  int? responseStatus;
  String? message;
  List<Bankdetail>? bankdetail;

  StudentBankDeatils({this.responseStatus, this.message, this.bankdetail});

  StudentBankDeatils.fromJson(Map<String, dynamic> json) {
    responseStatus = json['response_status'];
    message = json['message'];
    if (json['bankdetail'] != null) {
      bankdetail = <Bankdetail>[];
      json['bankdetail'].forEach((v) {
        bankdetail!.add(new Bankdetail.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response_status'] = this.responseStatus;
    data['message'] = this.message;
    if (this.bankdetail != null) {
      data['bankdetail'] = this.bankdetail!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bankdetail {
  String? id;
  String? type;
  String? name;
  String? bankName;
  String? userId;
  String? country;
  String? accountNumber;
  String? mICRcode;
  String? status;
  String? created;

  Bankdetail(
      {this.id,
      this.type,
      this.name,
      this.bankName,
      this.userId,
      this.country,
      this.accountNumber,
      this.mICRcode,
      this.status,
      this.created});

  Bankdetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    bankName = json['bankName'];
    userId = json['user_id'];
    country = json['country'];
    accountNumber = json['accountNumber'];
    mICRcode = json['MICRcode'];
    status = json['status'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['bankName'] = this.bankName;
    data['user_id'] = this.userId;
    data['country'] = this.country;
    data['accountNumber'] = this.accountNumber;
    data['MICRcode'] = this.mICRcode;
    data['status'] = this.status;
    data['created'] = this.created;
    return data;
  }
}
