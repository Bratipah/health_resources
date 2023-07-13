import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:upp_flutter/core/data/remote/model/extension/serializers.dart';
import 'serializers.dart';

part 'api_error_response.g.dart';

@JsonSerializable()
abstract class ApiErrorResponse
    implements Built<ApiErrorResponse, ApiErrorResponseBuilder> {


  String? get error;


  String? get path;


  String? get requestId;


  int? get status;


  String? get timestamp;


  String? get exception;


  String? get message;


  int? get code;


  String? get protocol;


  String? get url;

  ApiErrorResponse._();

  static void _initializeBuilder(ApiErrorResponseBuilder builder) => builder
    ..error = null
    ..path = null
    ..requestId = null
    ..status = null
    ..timestamp = null
    ..exception = null
    ..message = null
    ..code = null
    ..protocol = null
    ..url = null;


  factory ApiErrorResponse([void Function(ApiErrorResponseBuilder) updates]) = _$ApiErrorResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ApiErrorResponse.serializer, this));
  }

  static ApiErrorResponse? fromJson(Map<String, dynamic>? jsonString) {
    return serializers.deserializeWith(
        ApiErrorResponse.serializer, jsonString);
  }

  static Serializer<ApiErrorResponse> get serializer => _$apiErrorResponseSerializer;

}
