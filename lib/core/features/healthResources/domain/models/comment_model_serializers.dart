import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:health_resources/core/features/healthResources/domain/models/comment_model.dart';
import 'package:built_collection/built_collection.dart';



part 'comment_model_serializers.g.dart';

@SerializersFor([
  CommentModel,
  User,
])

final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin()))
    .build();