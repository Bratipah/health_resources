import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'article_model.dart';

part 'article_model_serializers.g.dart';

@SerializersFor([
  ArticleModel,
  Media,
  User,
])

final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin()))
    .build();
