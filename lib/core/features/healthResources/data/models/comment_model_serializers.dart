import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'comment_model.dart';

part 'comment_model_serializers.g.dart';

@SerializersFor([
  User,
  CommentModel,
])

final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin()))
    .build();