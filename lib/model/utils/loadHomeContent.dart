class LoadData {
  int userId;
  int id;
  String title;
  String body;

  LoadData({this.userId, this.id, this.title, this.body});

  LoadData.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}
/*
class LoadData {
  String sId;
  String icerik;
  int iV;

  LoadData({this.sId, this.icerik, this.iV});

  LoadData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    icerik = json['icerik'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['icerik'] = this.icerik;
    data['__v'] = this.iV;
    return data;
  }
}
*/
