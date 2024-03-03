class PlayerModel {
  String? uuid;
  String? name;
  int? high;
  String? play;
  int? number;
  String? born;
  String? from;
  String? firstClub;
  String? career;
  String? image;
  int? sportId;

  PlayerModel(
      {this.uuid,
      this.name,
      this.high,
      this.play,
      this.number,
      this.born,
      this.from,
      this.firstClub,
      this.career,
      this.image,
      this.sportId});

  PlayerModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    high = json['high'];
    play = json['play'];
    number = json['number'];
    born = json['born'];
    from = json['from'];
    firstClub = json['first_club'];
    career = json['career'];
    image = json['image'];
    sportId = json['sport_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['high'] = this.high;
    data['play'] = this.play;
    data['number'] = this.number;
    data['born'] = this.born;
    data['from'] = this.from;
    data['first_club'] = this.firstClub;
    data['career'] = this.career;
    data['image'] = this.image;
    data['sport_id'] = this.sportId;
    return data;
  }
}
