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
  int? get id;
  int? get created;
  int? get updated;
  int? get views;
  int? get likes;
  int? get comments;
  String? get title;
  String? get content;
  BuiltList<String>? get links;
  BuiltList<Media>? get media;
  @BuiltValueField(wireName: 'createdBy')
  User? get createdBy;
  BuiltList<String>? get target;
  bool? get isAvailable;
  bool? get didLike;
  bool? get isDeleted;

  ArticleModel._();

  factory ArticleModel(
      [void Function(ArticleModelBuilder) updates]) =
  _$ArticleModel;

  static Serializer<ArticleModel> get serializer =>
      _$articleModelSerializer;

  String toJson() {
    return json.encode(
        serializers.serializeWith(ArticleModel.serializer, this));
  }

  static ArticleModel? fromJson(Map<String, dynamic> jsonString) {
    return serializers.deserializeWith(
        ArticleModel.serializer, jsonString);
  }
  static BuiltList<ArticleModel> listFromJson(dynamic value) =>
      BuiltList.from(value.map((value) => fromJson(value)).toList(growable: false));

  static void _initializeBuilder(ArticleModelBuilder builder) => builder
    ..created = null
    ..likes = null
    ..views = null
    ..comments = null
    ..title = null
    ..createdBy = null
    ..links = null
    ..id = null
    ..isDeleted = null
    ..target = null
    ..isAvailable = null
    ..didLike = null
    ..updated = null;

}


abstract class Media implements Built<Media, MediaBuilder> {

  String? get name;
  String? get systemName;
  String? get type;
  String? get path;
  int? get size;
  bool? get isDeleted;
  int? get id;
  int? get created;
  int? get updated;

  Media._();

  factory Media([void Function(MediaBuilder) updates]) = _$Media;

  static Serializer<Media> get serializer =>
      _$mediaSerializer;

  String toJson() {
    return json
        .encode(serializers.serializeWith(Media.serializer, this));

  }

  static Media? fromJson(Map<String, dynamic> jsonString) {
    return serializers.deserializeWith(
        Media.serializer, jsonString);
  }
  static BuiltList<Media> listFromJson(dynamic value) =>
      BuiltList.from(value.map((value) => fromJson(value)).toList(growable: false));

  static void _initializeBuilder(MediaBuilder builder) => builder
    ..type = null
    ..created = null
    ..path = null
    ..size = null
    ..id = null
    ..isDeleted = null
    ..name = null
    ..systemName = null
    ..updated = null;
}

// abstract class CreatedBy implements Built<CreatedBy, CreatedByBuilder> {
//   //@BuiltValueField(wireName: "arcode")
//   //String? get arcode;
//   bool? get enabled;
//   String? get firstName;
//   String? get lastName;
//   BuiltList<String>? get otherNames;
//   int? get id;
//   int? get created;
//   int? get updated;
//
//   CreatedBy._();
//
//   factory CreatedBy([void Function(CreatedByBuilder) updates]) = _$CreatedBy;
//
//   static Serializer<CreatedBy> get serializer => _$createdBySerializer;
//
//   String toJson() {
//     return json
//         .encode(serializers.serializeWith(CreatedBy.serializer, this));
//
//   }
//
//   static CreatedBy? fromJson(Map<String, dynamic> jsonString) {
//     return serializers.deserializeWith(
//         CreatedBy.serializer, jsonString);
//   }
//   static BuiltList<CreatedBy> listFromJson(dynamic value) =>
//       BuiltList.from(value.map((value) => fromJson(value)).toList(growable: false));
//
//   static void _initializeBuilder(CreatedByBuilder builder) => builder
//     // ..arcode = null
//     ..enabled = null
//     ..created = null
//     ..firstName = null
//     ..lastName = null
//     ..id = null
//     ..otherNames = null
//     ..updated = null;
// }

abstract class User implements Built<User, UserBuilder> {
  @BuiltValueField(wireName: 'id')
  int? get id;

  @BuiltValueField(wireName: 'arcode')
  String? get arcode;

  @BuiltValueField(wireName: 'enabled')
  bool get enabled;

  @BuiltValueField(wireName: 'firstName')
  String? get firstName;

  @BuiltValueField(wireName: 'lastName')
  String? get lastName;

  @BuiltValueField(wireName: 'otherNames')
  BuiltList<String>? get otherNames;

  @BuiltValueField(wireName: 'profilePicture')
  int? get profilePicture;

  @BuiltValueField(wireName: 'country')
  String? get country;

  @BuiltValueField(wireName: 'referralCode')
  String? get referralCode;

  @BuiltValueField(wireName: 'referrer')
  String? get referrer;

  @BuiltValueField(wireName: 'bc_wallet')
  String? get bcWallet;

  @BuiltValueField(wireName: 'created')
  int? get created;

  @BuiltValueField(wireName: 'updated')
  int? get updated;

  User._();

  factory User([updates(UserBuilder b)]) = _$User;

  static Serializer<User> get serializer => _$userSerializer;

  static void _initializeBuilder(UserBuilder builder) =>
      builder
        ..id = 0
        ..arcode = null
        ..enabled = false
        ..firstName = null
        ..lastName = null
        ..otherNames = null
        ..profilePicture = null
        ..country = null
        ..referralCode = null
        ..referrer = null
        ..bcWallet = null
        ..created = null
        ..updated = null;

  static User? fromJson(Map<String, dynamic> jsonString) {
    return serializers.deserializeWith(
        User.serializer, jsonString);
  }

  String toJson() {
    return json.encode(
        serializers.serializeWith(User.serializer, this));
  }
}


