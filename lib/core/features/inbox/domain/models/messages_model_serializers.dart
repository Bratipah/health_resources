import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:health_resources/core/features/inbox/domain/models/messages_model.dart';
import 'package:built_collection/built_collection.dart';

part 'messages_model_serializers.g.dart';

@SerializersFor([
  MessagesModel,
  Sender,
])

final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin()))
    .build();