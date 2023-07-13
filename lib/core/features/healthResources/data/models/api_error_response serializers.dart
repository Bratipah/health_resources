import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'api_error_response.dart';

part 'api_error_response serializers.g.dart';

@SerializersFor([
  ApiErrorResponse
])

final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin()))
    .build();
