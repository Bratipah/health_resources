// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiErrorResponse> _$apiErrorResponseSerializer =
    new _$ApiErrorResponseSerializer();

class _$ApiErrorResponseSerializer
    implements StructuredSerializer<ApiErrorResponse> {
  @override
  final Iterable<Type> types = const [ApiErrorResponse, _$ApiErrorResponse];
  @override
  final String wireName = 'ApiErrorResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, ApiErrorResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.path;
    if (value != null) {
      result
        ..add('path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.exception;
    if (value != null) {
      result
        ..add('exception')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.protocol;
    if (value != null) {
      result
        ..add('protocol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ApiErrorResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApiErrorResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'exception':
          result.exception = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'protocol':
          result.protocol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ApiErrorResponse extends ApiErrorResponse {
  @override
  final String? error;
  @override
  final String? path;
  @override
  final String? requestId;
  @override
  final int? status;
  @override
  final String? timestamp;
  @override
  final String? exception;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final String? protocol;
  @override
  final String? url;

  factory _$ApiErrorResponse(
          [void Function(ApiErrorResponseBuilder)? updates]) =>
      (new ApiErrorResponseBuilder()..update(updates))._build();

  _$ApiErrorResponse._(
      {this.error,
      this.path,
      this.requestId,
      this.status,
      this.timestamp,
      this.exception,
      this.message,
      this.code,
      this.protocol,
      this.url})
      : super._();

  @override
  ApiErrorResponse rebuild(void Function(ApiErrorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiErrorResponseBuilder toBuilder() =>
      new ApiErrorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiErrorResponse &&
        error == other.error &&
        path == other.path &&
        requestId == other.requestId &&
        status == other.status &&
        timestamp == other.timestamp &&
        exception == other.exception &&
        message == other.message &&
        code == other.code &&
        protocol == other.protocol &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, exception.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiErrorResponse')
          ..add('error', error)
          ..add('path', path)
          ..add('requestId', requestId)
          ..add('status', status)
          ..add('timestamp', timestamp)
          ..add('exception', exception)
          ..add('message', message)
          ..add('code', code)
          ..add('protocol', protocol)
          ..add('url', url))
        .toString();
  }
}

class ApiErrorResponseBuilder
    implements Builder<ApiErrorResponse, ApiErrorResponseBuilder> {
  _$ApiErrorResponse? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _timestamp;
  String? get timestamp => _$this._timestamp;
  set timestamp(String? timestamp) => _$this._timestamp = timestamp;

  String? _exception;
  String? get exception => _$this._exception;
  set exception(String? exception) => _$this._exception = exception;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  ApiErrorResponseBuilder() {
    ApiErrorResponse._initializeBuilder(this);
  }

  ApiErrorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _path = $v.path;
      _requestId = $v.requestId;
      _status = $v.status;
      _timestamp = $v.timestamp;
      _exception = $v.exception;
      _message = $v.message;
      _code = $v.code;
      _protocol = $v.protocol;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiErrorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiErrorResponse;
  }

  @override
  void update(void Function(ApiErrorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiErrorResponse build() => _build();

  _$ApiErrorResponse _build() {
    final _$result = _$v ??
        new _$ApiErrorResponse._(
            error: error,
            path: path,
            requestId: requestId,
            status: status,
            timestamp: timestamp,
            exception: exception,
            message: message,
            code: code,
            protocol: protocol,
            url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
