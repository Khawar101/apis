class UpdateProfile {
  String? userId;
  int? id;
  String? title;

  UpdateProfile({this.userId, this.id, this.title});

  UpdateProfile.fromJson(Map<String, dynamic> json) {
    userId = json['userid'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userid'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    return data;
  }
}
