import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'messages_model_serializers.dart';

part 'messages_model.g.dart';

abstract class MessagesModel
    implements Built<MessagesModel, MessagesModelBuilder> {
  MessagesModel._();

  factory MessagesModel([updates(MessagesModelBuilder b)]) = _$MessagesModel;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'content')
  String? get content;
  @BuiltValueField(wireName: 'sender')
  Sender? get sender;
  @BuiltValueField(wireName: 'numReadBy')
  int? get numReadBy;
  String toJson() {
    return json
        .encode(serializers.serializeWith(MessagesModel.serializer, this));
  }

  static MessagesModel fromJson(String jsonString) {
    final messagesModel = serializers.deserializeWith(
      MessagesModel.serializer,
      json.decode(jsonString),
    );

    if (messagesModel != null) {
      return messagesModel;
    } else {
      // Handle the case when messagesModel is null
      throw Exception('Failed to deserialize MessagesModel');
    }
  }

  static Serializer<MessagesModel> get serializer => _$messagesModelSerializer;
}

abstract class Sender implements Built<Sender, SenderBuilder> {
  Sender._();

  factory Sender([updates(SenderBuilder b)]) = _$Sender;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'userId')
  int? get userId;
  @BuiltValueField(wireName: 'state')
  String? get state;
  @BuiltValueField(wireName: 'room')
  Room? get room;
  @BuiltValueField(wireName: 'isAdmin')
  bool? get isAdmin;
  @BuiltValueField(wireName: 'updated')
  int? get updated;
  @BuiltValueField(wireName: 'created')
  int? get created;
  String toJson() {
    return json.encode(serializers.serializeWith(Sender.serializer, this));
  }

  static Sender fromJson(String jsonString) {
    return serializers.deserializeWith(
        Sender.serializer, json.decode(jsonString));
  }

  static Serializer<Sender> get serializer => _$senderSerializer;
}

abstract class Room implements Built<Room, RoomBuilder> {
  Room._();

  factory Room([updates(RoomBuilder b)]) = _$Room;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'userId')
  int? get userId;
  @BuiltValueField(wireName: 'state')
  String? get state;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'description')
  String? get description;
  @BuiltValueField(wireName: 'isGroup')
  bool? get isGroup;
  @BuiltValueField(wireName: 'canReply')
  bool? get canReply;
  @BuiltValueField(wireName: 'updated')
  int? get updated;
  @BuiltValueField(wireName: 'created')
  int? get created;
  String toJson() {
    return json.encode(serializers.serializeWith(Room.serializer, this));
  }

  static Room fromJson(String jsonString) {
    return serializers.deserializeWith(
        Room.serializer, json.decode(jsonString));
  }

  static Serializer<Room> get serializer => _$roomSerializer;
}