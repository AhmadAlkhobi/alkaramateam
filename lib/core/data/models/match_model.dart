class MatchModel {
  String? uuid;
  String? whenDate;
  String? whenTime;
  String? whenDay;
  String? status;
  String? plan;
  String? channel;
  String? round;
  String? playGround;
  String? seasoneId;
  String? club1Name;
  String? logoclub1;
  String? club2Name;
  String? logoclub2;

  MatchModel(
      {this.uuid,
      this.whenDate,
      this.whenTime,
      this.whenDay,
      this.status,
      this.plan,
      this.channel,
      this.round,
      this.playGround,
      this.seasoneId,
      this.club1Name,
      this.logoclub1,
      this.club2Name,
      this.logoclub2});

  MatchModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    whenDate = json['when_date'];
    whenTime = json['when_time'];
    whenDay = json['when_day'];
    status = json['status'];
    plan = json['plan'];
    channel = json['channel'];
    round = json['round'];
    playGround = json['play_ground'];
    seasoneId = json['seasone_id'];
    club1Name = json['club1_name'];
    logoclub1 = json['logoclub1'];
    club2Name = json['club2_name'];
    logoclub2 = json['logoclub2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['when_date'] = this.whenDate;
    data['when_time'] = this.whenTime;
    data['when_day'] = this.whenDay;
    data['status'] = this.status;
    data['plan'] = this.plan;
    data['channel'] = this.channel;
    data['round'] = this.round;
    data['play_ground'] = this.playGround;
    data['seasone_id'] = this.seasoneId;
    data['club1_name'] = this.club1Name;
    data['logoclub1'] = this.logoclub1;
    data['club2_name'] = this.club2Name;
    data['logoclub2'] = this.logoclub2;
    return data;
  }
}
