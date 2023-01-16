class KeysListModel {
  String? activities;
  String? type;
  int? participants;
  double? price;
  String? link;
  int? key;
  int? accessibility;

  KeysListModel({
    this.activities,
    this.type,
    this.participants,
    this.price,
    this.link,
    this.key,
    this.accessibility,
  });

  KeysListModel.fromJson(Map<String, dynamic> json) {
    activities = json['activities'];
    type = json['type'];
    participants = json['participants'];
    price = json['price'];
    link = json['link'];
    key = json['key'];
    accessibility = json['accessibility'];
  }
}
