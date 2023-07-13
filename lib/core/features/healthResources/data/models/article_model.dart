import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'article_model_serializers.dart';

part 'article_model.g.dart';

abstract class CreateArticleRequest
    implements Built<CreateArticleRequest, CreateArticleRequestBuilder> {
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
  User? get createdBy;
  BuiltList<String>? get target;
  bool? get isAvailable;
  bool? get didLike;
  bool? get isDeleted;

  CreateArticleRequest._();

  factory CreateArticleRequest(
      [void Function(CreateArticleRequestBuilder) updates]) =
  _$CreateArticleRequest;

  static Serializer<CreateArticleRequest> get serializer =>
      _$createArticleRequestSerializer;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CreateArticleRequest.serializer, this));
  }

  static CreateArticleRequest? fromJson(Map<String, dynamic> jsonString) {
    return serializers.deserializeWith(
        CreateArticleRequest.serializer, jsonString);
  }
  // static BuiltList<ArticleModel> listFromJson(dynamic value) =>
  //     BuiltList.from(value.map((value) => fromJson(value)).toList(growable: false));

  static void _initializeBuilder(CreateArticleRequestBuilder builder) => builder
    ..created = null
    ..likes = null
    ..views = null
    ..comments = null
    ..title = null
    ..createdBy = null
    ..media = null
    ..links = null
    ..id = null
    ..isDeleted = null
    ..target = null
    ..isAvailable = null
    ..didLike = null
    ..updated = null;

}

abstract class Article
    implements Built<Article, ArticleBuilder> {
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
  User? get createdBy;
  BuiltList<String>? get target;
  bool? get isAvailable;
  bool? get didLike;
  bool? get isDeleted;

  Article._();

  factory Article(
      [void Function(ArticleBuilder) updates]) =
  _$Article;

  static Serializer<Article> get serializer =>
      _$articleSerializer;

  String toJson() {
    return json.encode(
        serializers.serializeWith(Article.serializer, this));
  }

  static Article? fromJson(Map<String, dynamic> jsonString) {
    return serializers.deserializeWith(
        Article.serializer, jsonString);
  }
  // static BuiltList<ArticleModel> listFromJson(dynamic value) =>
  //     BuiltList.from(value.map((value) => fromJson(value)).toList(growable: false));

  static void _initializeBuilder(ArticleBuilder builder) => builder
    ..created = null
    ..likes = null
    ..views = null
    ..comments = null
    ..title = null
    ..createdBy = null
    ..media = null
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


