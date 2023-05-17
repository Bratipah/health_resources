class CommentModel {
  int? id;
  int? org_id;
  int? user_id;
  String? created_at;
  String? end_date;
  String? updated_at;
  String? create_date;
  String? resourcename;
  String? category;
  String? content;
  String? contenttext;
  String? contenttype;
  String? imageurl;
  int? status;
  String? lang;

  CommentModel({this.id,
    this.org_id,
    this.user_id,
    this.created_at,
    this.end_date,
    this.updated_at,
    this.create_date,
    this.resourcename,
    this.category,
    this.content,
    this.contenttext,
    this.contenttype,
    this.imageurl,
    this.status,
    this.lang,});

  CommentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    org_id = json['org_id'];
    user_id = json['org_id'];
    created_at = json['created_at'];
    updated_at = json['updated_at'];
    end_date = json['end_date'];
    content = json['content'];
    contenttext = json['contenttext'];
    resourcename = json['resourcename'];
    category = json['category'];
    imageurl = json['imageurl'];
    status = json['status'];
    lang = json['lang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id ;
    data['org_id'] = this.org_id;
    data['user_id'] = this.user_id;
    data['created_at'] = this.created_at;
    data['updated_at'] = this.updated_at;
    data['end_date'] = this.end_date;
    data['content'] = this.content;
    data['contenttext'] = this.contenttext;
    data['resourcename'] = this.resourcename;
    data['category'] = this.category;
    data['imageurl'] = this.imageurl;
    data['status'] = this.status;
    data['lang'] = this.lang;
    return data;
  }
}
