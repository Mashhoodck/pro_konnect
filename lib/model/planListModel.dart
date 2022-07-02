class PlansModel {
  int? _responseStatus;
  String? _message;
  late List<PlanData> _data;

  List<PlanData> get planList => _data;

  PlansModel({required responseStatus, required message, required planList}) {
    this._responseStatus = responseStatus;
    this._message = message;
    this._data = planList;
  }

  PlansModel.fromJson(Map<String, dynamic> json) {
    _responseStatus = json['response_status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = <PlanData>[];
      json['data'].forEach((v) {
        _data!.add(PlanData.fromJson(v));
      });
    }
  }
}

class PlanData {
  String? id;
  String? name;
  String? slug;
  String? description;
  String? numberOfProguides;
  String? isGeographic;
  String? duration;
  String? type;
  String? status;
  String? basePrice;
  String? proguidePrice;

  PlanData(
      {this.id,
      this.name,
      this.slug,
      this.description,
      this.numberOfProguides,
      this.isGeographic,
      this.duration,
      this.type,
      this.status,
      this.basePrice,
      this.proguidePrice});

  PlanData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    numberOfProguides = json['number_of_proguides'];
    isGeographic = json['is_geographic'];
    duration = json['duration'];
    type = json['type'];
    status = json['status'];
    basePrice = json['base_price'];
    proguidePrice = json['proguide_price'];
  }
}
