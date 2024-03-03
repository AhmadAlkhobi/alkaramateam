class InfoModel {
  String? uuid;
  String? title;
  String? content;
  int? reads;
  String? image;
  String? type;

  InfoModel(
      {this.uuid, this.title, this.content, this.reads, this.image, this.type});

  InfoModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    title = json['title'];
    content = json['content'];
    reads = json['reads'];
    image = json['image'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['title'] = this.title;
    data['content'] = this.content;
    data['reads'] = this.reads;
    data['image'] = this.image;
    data['type'] = this.type;
    return data;
  }
}
