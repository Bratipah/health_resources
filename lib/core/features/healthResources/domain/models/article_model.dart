class ArticleModel {
  int? id;
  int? org_id;
  int? user_id;
  String? created_at;
  String? end_date;
  String? updated_at;
  String? create_date;
  String? type;
  String? attachments;
  String? resourcename;
  String? category;
  String? content;
  String? contenttext;
  String? contenttype;
  String? imageurl;
  String? sourceurl;
  String? videourl;
  String? surveyurl;
  int? status;
  String? lang;

  ArticleModel({this.id,
      this.org_id,
      this.user_id,
      this.created_at,
      this.end_date,
      this.updated_at,
      this.create_date,
      this.type,
      this.attachments,
      this.resourcename,
      this.category,
      this.content,
      this.contenttext,
      this.contenttype,
      this.imageurl,
      this.sourceurl,
      this.videourl,
      this.surveyurl,
      this.status,
      this.lang,});

  ArticleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    org_id = json['org_id'];
    user_id = json['org_id'];
    created_at = json['created_at'];
    updated_at = json['updated_at'];
    end_date = json['end_date'];
    content = json['content'];
    contenttext = json['contenttext'];
    attachments = json['attachments'];
    type = json['type'];
    resourcename = json['resourcename'];
    category = json['category'];
    imageurl = json['imageurl'];
    sourceurl = json['sourceurl'];
    videourl = json['videourl'];
    surveyurl = json['surveyurl'];
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
    data['attachments'] = this.attachments;
    data['type'] = this.type;
    data['resourcename'] = this.resourcename;
    data['category'] = this.category;
    data['imageurl'] = this.imageurl;
    data['sourceurl'] = this.sourceurl;
    data['videourl'] = this.videourl;
    data['surveyurl'] = this.surveyurl;
    data['status'] = this.status;
    data['lang'] = this.lang;
    return data;
  }
}

