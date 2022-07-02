class ProguideResult {
  String image;
  String name;
  String country;
  String specialarea;
  String projrct;
  String status;

  ProguideResult(
      {required this.image,
      required this.name,
      required this.country,
      required this.specialarea,
      required this.projrct,
      required this.status});
}

class ProDetails {
  final List<ProguideResult> proDetails = [];
}
