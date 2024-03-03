class BossModel {
  String? uuid;
  String? name;
  String? startYear;
  String? image;

  BossModel({this.uuid, this.name, this.startYear, this.image});

  BossModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    startYear = json['start_year'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['start_year'] = this.startYear;
    data['image'] = this.image;
    return data;
  }
}
