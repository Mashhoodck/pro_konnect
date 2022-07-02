class CreateProjectModel {
  String? contry;
  int? proguideId;
  String? specialization;
  String? startDate;
  String? endDate;

  CreateProjectModel(
      {required this.contry,
      this.proguideId,
      required this.specialization,
      required this.startDate,
      required this.endDate});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contry'] = this.contry;
    data['proguideId'] = this.proguideId;
    data['specialization'] = this.specialization;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    return data;
  }
}
