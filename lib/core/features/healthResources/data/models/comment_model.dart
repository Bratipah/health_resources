import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'comment_model_serializers.dart';

part 'comment_model.g.dart';

abstract class CommentModel
    implements Built<CommentModel, CommentModelBuilder> {

  User get createdBy;
  int get id;
  int get created;
  int get updated;
  String get content;
  bool get isHidden;

  CommentModel._();
  factory CommentModel(
      [void Function(CommentModelBuilder) updates]) =
  _$CommentModel;

  static Serializer<CommentModel> get serializer =>
      _$commentModelSerializer;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CommentModel.serializer, this));
  }

  static CommentModel? fromJson(Map<String, dynamic> jsonString) {
    return serializers.deserializeWith(
        CommentModel.serializer, jsonString);
  }
  static BuiltList<CommentModel> listFromJson(dynamic value) =>
      BuiltList.from(value.map((value) => fromJson(value)).toList(growable: false));

  static void _initializeBuilder(CommentModelBuilder builder) => builder
    ..id = null
    ..isHidden = null
    ..content = null
    ..created = null
    ..id = null
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
