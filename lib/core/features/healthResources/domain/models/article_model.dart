// class ArticleModel {
//   int? id;
//   int? org_id;
//   int? user_id;
//   String? created_at;
//   String? end_date;
//   String? updated_at;
//   String? create_date;
//   String? type;
//   String? attachments;
//   String? resourcename;
//   String? category;
//   String? content;
//   String? contenttext;
//   String? contenttype;
//   String? imageurl;
//   String? sourceurl;
//   String? videourl;
//   String? surveyurl;
//   int? status;
//   String? lang;
//
//   ArticleModel({this.id,
//       this.org_id,
//       this.user_id,
//       this.created_at,
//       this.end_date,
//       this.updated_at,
//       this.create_date,
//       this.type,
//       this.attachments,
//       this.resourcename,
//       this.category,
//       this.content,
//       this.contenttext,
//       this.contenttype,
//       this.imageurl,
//       this.sourceurl,
//       this.videourl,
//       this.surveyurl,
//       this.status,
//       this.lang,});
//
//   ArticleModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     org_id = json['org_id'];
//     user_id = json['org_id'];
//     created_at = json['created_at'];
//     updated_at = json['updated_at'];
//     end_date = json['end_date'];
//     content = json['content'];
//     contenttext = json['contenttext'];
//     attachments = json['attachments'];
//     type = json['type'];
//     resourcename = json['resourcename'];
//     category = json['category'];
//     imageurl = json['imageurl'];
//     sourceurl = json['sourceurl'];
//     videourl = json['videourl'];
//     surveyurl = json['surveyurl'];
//     status = json['status'];
//     lang = json['lang'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id ;
//     data['org_id'] = this.org_id;
//     data['user_id'] = this.user_id;
//     data['created_at'] = this.created_at;
//     data['updated_at'] = this.updated_at;
//     data['end_date'] = this.end_date;
//     data['content'] = this.content;
//     data['contenttext'] = this.contenttext;
//     data['attachments'] = this.attachments;
//     data['type'] = this.type;
//     data['resourcename'] = this.resourcename;
//     data['category'] = this.category;
//     data['imageurl'] = this.imageurl;
//     data['sourceurl'] = this.sourceurl;
//     data['videourl'] = this.videourl;
//     data['surveyurl'] = this.surveyurl;
//     data['status'] = this.status;
//     data['lang'] = this.lang;
//     return data;
//   }
// }

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'article_model_serializers.dart';

part 'article_model.g.dart';

abstract class ArticleModel
    implements Built<ArticleModel, ArticleModelBuilder> {
  ArticleModel._();

  factory ArticleModel([void Function(ArticleModelBuilder)updates]) = _$ArticleModel;
  @BuiltValueField(wireName: 'media')
  BuiltList<Media>? get media;
  @BuiltValueField(wireName: 'createdBy')
  CreatedBy? get createdBy;
  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'created')
  int? get created;
  @BuiltValueField(wireName: 'updated')
  int? get updated;
  @BuiltValueField(wireName: 'views')
  int? get views;
  @BuiltValueField(wireName: 'likes')
  int? get likes;
  @BuiltValueField(wireName: 'title')
  String? get title;
  @BuiltValueField(wireName: 'content')
  String? get content;
  @BuiltValueField(wireName: 'links')
  BuiltList<String>? get links;
  @BuiltValueField(wireName: 'target')
  BuiltList<String>? get target;
  @BuiltValueField(wireName: 'isAvailable')
  bool? get isAvailable;
  @BuiltValueField(wireName: 'didLike')
  bool? get didLike;
  @BuiltValueField(wireName: 'isDeleted')
  bool? get isDeleted;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ArticleModel.serializer, this));
  }

  static ArticleModel fromJson(String jsonString) {
    final articleModel = serializers.deserializeWith(
      ArticleModel.serializer,
      json.decode(jsonString),
    );

    if (articleModel != null) {
      return articleModel;
    } else {
      // Handle the case when articleModel is null
      throw Exception('Failed to deserialize ArticleModel');
    }
  }

  static Serializer<ArticleModel> get serializer => _$articleModelSerializer;
}


abstract class Media implements Built<Media, MediaBuilder> {
  Media._();

  factory Media([updates(MediaBuilder b)]) = _$Media;

  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'systemName')
  String? get systemName;
  @BuiltValueField(wireName: 'type')
  String? get type;
  @BuiltValueField(wireName: 'path')
  String? get path;
  @BuiltValueField(wireName: 'size')
  int? get size;
  @BuiltValueField(wireName: 'isDeleted')
  bool? get isDeleted;
  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'created')
  int? get created;
  @BuiltValueField(wireName: 'updated')
  int? get updated;
  String toJson() {
    return json.encode(serializers.serializeWith(Media.serializer, this));
  }

  static Media? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Media.serializer, json.decode(jsonString));
  }

  static Serializer<Media> get serializer => _$mediaSerializer;
}

abstract class CreatedBy implements Built<CreatedBy, CreatedByBuilder> {
  CreatedBy._();

  factory CreatedBy([updates(CreatedByBuilder b)]) = _$CreatedBy;

  @BuiltValueField(wireName: 'arcode')
  String? get arcode;
  @BuiltValueField(wireName: 'enabled')
  bool? get enabled;
  @BuiltValueField(wireName: 'firstName')
  String? get firstName;
  @BuiltValueField(wireName: 'lastName')
  String? get lastName;
  @BuiltValueField(wireName: 'otherNames')
  BuiltList<String>? get otherNames;
  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'created')
  int? get created;
  @BuiltValueField(wireName: 'updated')
  int? get updated;
  String toJson() {
    return json.encode(serializers.serializeWith(CreatedBy.serializer, this));
  }

  static CreatedBy? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CreatedBy.serializer, json.decode(jsonString));
  }

  static Serializer<CreatedBy> get serializer => _$createdBySerializer;
}


