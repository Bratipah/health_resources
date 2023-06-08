// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessagesModel> _$messagesModelSerializer =
    new _$MessagesModelSerializer();
Serializer<Sender> _$senderSerializer = new _$SenderSerializer();
Serializer<Room> _$roomSerializer = new _$RoomSerializer();

class _$MessagesModelSerializer implements StructuredSerializer<MessagesModel> {
  @override
  final Iterable<Type> types = const [MessagesModel, _$MessagesModel];
  @override
  final String wireName = 'MessagesModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MessagesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sender;
    if (value != null) {
      result
        ..add('sender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Sender)));
    }
    value = object.numReadBy;
    if (value != null) {
      result
        ..add('numReadBy')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  MessagesModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessagesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sender':
          result.sender.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sender))! as Sender);
          break;
        case 'numReadBy':
          result.numReadBy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$SenderSerializer implements StructuredSerializer<Sender> {
  @override
  final Iterable<Type> types = const [Sender, _$Sender];
  @override
  final String wireName = 'Sender';

  @override
  Iterable<Object?> serialize(Serializers serializers, Sender object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.room;
    if (value != null) {
      result
        ..add('room')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Room)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('isAdmin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.updated;
    if (value != null) {
      result
        ..add('updated')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Sender deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SenderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'room':
          result.room.replace(serializers.deserialize(value,
              specifiedType: const FullType(Room))! as Room);
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$RoomSerializer implements StructuredSerializer<Room> {
  @override
  final Iterable<Type> types = const [Room, _$Room];
  @override
  final String wireName = 'Room';

  @override
  Iterable<Object?> serialize(Serializers serializers, Room object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isGroup;
    if (value != null) {
      result
        ..add('isGroup')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canReply;
    if (value != null) {
      result
        ..add('canReply')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.updated;
    if (value != null) {
      result
        ..add('updated')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Room deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoomBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isGroup':
          result.isGroup = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'canReply':
          result.canReply = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$MessagesModel extends MessagesModel {
  @override
  final int? id;
  @override
  final String? content;
  @override
  final Sender? sender;
  @override
  final int? numReadBy;

  factory _$MessagesModel([void Function(MessagesModelBuilder)? updates]) =>
      (new MessagesModelBuilder()..update(updates))._build();

  _$MessagesModel._({this.id, this.content, this.sender, this.numReadBy})
      : super._();

  @override
  MessagesModel rebuild(void Function(MessagesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessagesModelBuilder toBuilder() => new MessagesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessagesModel &&
        id == other.id &&
        content == other.content &&
        sender == other.sender &&
        numReadBy == other.numReadBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, sender.hashCode);
    _$hash = $jc(_$hash, numReadBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MessagesModel')
          ..add('id', id)
          ..add('content', content)
          ..add('sender', sender)
          ..add('numReadBy', numReadBy))
        .toString();
  }
}

class MessagesModelBuilder
    implements Builder<MessagesModel, MessagesModelBuilder> {
  _$MessagesModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  SenderBuilder? _sender;
  SenderBuilder get sender => _$this._sender ??= new SenderBuilder();
  set sender(SenderBuilder? sender) => _$this._sender = sender;

  int? _numReadBy;
  int? get numReadBy => _$this._numReadBy;
  set numReadBy(int? numReadBy) => _$this._numReadBy = numReadBy;

  MessagesModelBuilder();

  MessagesModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _content = $v.content;
      _sender = $v.sender?.toBuilder();
      _numReadBy = $v.numReadBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessagesModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessagesModel;
  }

  @override
  void update(void Function(MessagesModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MessagesModel build() => _build();

  _$MessagesModel _build() {
    _$MessagesModel _$result;
    try {
      _$result = _$v ??
          new _$MessagesModel._(
              id: id,
              content: content,
              sender: _sender?.build(),
              numReadBy: numReadBy);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sender';
        _sender?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MessagesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Sender extends Sender {
  @override
  final int? id;
  @override
  final int? userId;
  @override
  final String? state;
  @override
  final Room? room;
  @override
  final bool? isAdmin;
  @override
  final int? updated;
  @override
  final int? created;

  factory _$Sender([void Function(SenderBuilder)? updates]) =>
      (new SenderBuilder()..update(updates))._build();

  _$Sender._(
      {this.id,
      this.userId,
      this.state,
      this.room,
      this.isAdmin,
      this.updated,
      this.created})
      : super._();

  @override
  Sender rebuild(void Function(SenderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SenderBuilder toBuilder() => new SenderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sender &&
        id == other.id &&
        userId == other.userId &&
        state == other.state &&
        room == other.room &&
        isAdmin == other.isAdmin &&
        updated == other.updated &&
        created == other.created;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, room.hashCode);
    _$hash = $jc(_$hash, isAdmin.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Sender')
          ..add('id', id)
          ..add('userId', userId)
          ..add('state', state)
          ..add('room', room)
          ..add('isAdmin', isAdmin)
          ..add('updated', updated)
          ..add('created', created))
        .toString();
  }
}

class SenderBuilder implements Builder<Sender, SenderBuilder> {
  _$Sender? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  RoomBuilder? _room;
  RoomBuilder get room => _$this._room ??= new RoomBuilder();
  set room(RoomBuilder? room) => _$this._room = room;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  int? _updated;
  int? get updated => _$this._updated;
  set updated(int? updated) => _$this._updated = updated;

  int? _created;
  int? get created => _$this._created;
  set created(int? created) => _$this._created = created;

  SenderBuilder();

  SenderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _state = $v.state;
      _room = $v.room?.toBuilder();
      _isAdmin = $v.isAdmin;
      _updated = $v.updated;
      _created = $v.created;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sender other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Sender;
  }

  @override
  void update(void Function(SenderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Sender build() => _build();

  _$Sender _build() {
    _$Sender _$result;
    try {
      _$result = _$v ??
          new _$Sender._(
              id: id,
              userId: userId,
              state: state,
              room: _room?.build(),
              isAdmin: isAdmin,
              updated: updated,
              created: created);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'room';
        _room?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Sender', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Room extends Room {
  @override
  final int? id;
  @override
  final int? userId;
  @override
  final String? state;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? isGroup;
  @override
  final bool? canReply;
  @override
  final int? updated;
  @override
  final int? created;

  factory _$Room([void Function(RoomBuilder)? updates]) =>
      (new RoomBuilder()..update(updates))._build();

  _$Room._(
      {this.id,
      this.userId,
      this.state,
      this.name,
      this.description,
      this.isGroup,
      this.canReply,
      this.updated,
      this.created})
      : super._();

  @override
  Room rebuild(void Function(RoomBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoomBuilder toBuilder() => new RoomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Room &&
        id == other.id &&
        userId == other.userId &&
        state == other.state &&
        name == other.name &&
        description == other.description &&
        isGroup == other.isGroup &&
        canReply == other.canReply &&
        updated == other.updated &&
        created == other.created;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isGroup.hashCode);
    _$hash = $jc(_$hash, canReply.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Room')
          ..add('id', id)
          ..add('userId', userId)
          ..add('state', state)
          ..add('name', name)
          ..add('description', description)
          ..add('isGroup', isGroup)
          ..add('canReply', canReply)
          ..add('updated', updated)
          ..add('created', created))
        .toString();
  }
}

class RoomBuilder implements Builder<Room, RoomBuilder> {
  _$Room? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isGroup;
  bool? get isGroup => _$this._isGroup;
  set isGroup(bool? isGroup) => _$this._isGroup = isGroup;

  bool? _canReply;
  bool? get canReply => _$this._canReply;
  set canReply(bool? canReply) => _$this._canReply = canReply;

  int? _updated;
  int? get updated => _$this._updated;
  set updated(int? updated) => _$this._updated = updated;

  int? _created;
  int? get created => _$this._created;
  set created(int? created) => _$this._created = created;

  RoomBuilder();

  RoomBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _state = $v.state;
      _name = $v.name;
      _description = $v.description;
      _isGroup = $v.isGroup;
      _canReply = $v.canReply;
      _updated = $v.updated;
      _created = $v.created;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Room other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Room;
  }

  @override
  void update(void Function(RoomBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Room build() => _build();

  _$Room _build() {
    final _$result = _$v ??
        new _$Room._(
            id: id,
            userId: userId,
            state: state,
            name: name,
            description: description,
            isGroup: isGroup,
            canReply: canReply,
            updated: updated,
            created: created);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
