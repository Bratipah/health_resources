// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentModel> _$commentModelSerializer =
    new _$CommentModelSerializer();
Serializer<User> _$userSerializer = new _$UserSerializer();

class _$CommentModelSerializer implements StructuredSerializer<CommentModel> {
  @override
  final Iterable<Type> types = const [CommentModel, _$CommentModel];
  @override
  final String wireName = 'CommentModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommentModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'createdBy',
      serializers.serialize(object.createdBy,
          specifiedType: const FullType(User)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'created',
      serializers.serialize(object.created, specifiedType: const FullType(int)),
      'updated',
      serializers.serialize(object.updated, specifiedType: const FullType(int)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'isHidden',
      serializers.serialize(object.isHidden,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  CommentModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createdBy':
          result.createdBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(User))! as User);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isHidden':
          result.isHidden = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object?> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'enabled',
      serializers.serialize(object.enabled,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.arcode;
    if (value != null) {
      result
        ..add('arcode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.otherNames;
    if (value != null) {
      result
        ..add('otherNames')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.profilePicture;
    if (value != null) {
      result
        ..add('profilePicture')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referralCode;
    if (value != null) {
      result
        ..add('referralCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referrer;
    if (value != null) {
      result
        ..add('referrer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bcWallet;
    if (value != null) {
      result
        ..add('bc_wallet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.updated;
    if (value != null) {
      result
        ..add('updated')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

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
        case 'arcode':
          result.arcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'enabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'otherNames':
          result.otherNames.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'profilePicture':
          result.profilePicture = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'referralCode':
          result.referralCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'referrer':
          result.referrer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bc_wallet':
          result.bcWallet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$CommentModel extends CommentModel {
  @override
  final User createdBy;
  @override
  final int id;
  @override
  final int created;
  @override
  final int updated;
  @override
  final String content;
  @override
  final bool isHidden;

  factory _$CommentModel([void Function(CommentModelBuilder)? updates]) =>
      (new CommentModelBuilder()..update(updates))._build();

  _$CommentModel._(
      {required this.createdBy,
      required this.id,
      required this.created,
      required this.updated,
      required this.content,
      required this.isHidden})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        createdBy, r'CommentModel', 'createdBy');
    BuiltValueNullFieldError.checkNotNull(id, r'CommentModel', 'id');
    BuiltValueNullFieldError.checkNotNull(created, r'CommentModel', 'created');
    BuiltValueNullFieldError.checkNotNull(updated, r'CommentModel', 'updated');
    BuiltValueNullFieldError.checkNotNull(content, r'CommentModel', 'content');
    BuiltValueNullFieldError.checkNotNull(
        isHidden, r'CommentModel', 'isHidden');
  }

  @override
  CommentModel rebuild(void Function(CommentModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentModelBuilder toBuilder() => new CommentModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentModel &&
        createdBy == other.createdBy &&
        id == other.id &&
        created == other.created &&
        updated == other.updated &&
        content == other.content &&
        isHidden == other.isHidden;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, isHidden.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommentModel')
          ..add('createdBy', createdBy)
          ..add('id', id)
          ..add('created', created)
          ..add('updated', updated)
          ..add('content', content)
          ..add('isHidden', isHidden))
        .toString();
  }
}

class CommentModelBuilder
    implements Builder<CommentModel, CommentModelBuilder> {
  _$CommentModel? _$v;

  UserBuilder? _createdBy;
  UserBuilder get createdBy => _$this._createdBy ??= new UserBuilder();
  set createdBy(UserBuilder? createdBy) => _$this._createdBy = createdBy;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _created;
  int? get created => _$this._created;
  set created(int? created) => _$this._created = created;

  int? _updated;
  int? get updated => _$this._updated;
  set updated(int? updated) => _$this._updated = updated;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  bool? _isHidden;
  bool? get isHidden => _$this._isHidden;
  set isHidden(bool? isHidden) => _$this._isHidden = isHidden;

  CommentModelBuilder() {
    CommentModel._initializeBuilder(this);
  }

  CommentModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdBy = $v.createdBy.toBuilder();
      _id = $v.id;
      _created = $v.created;
      _updated = $v.updated;
      _content = $v.content;
      _isHidden = $v.isHidden;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentModel;
  }

  @override
  void update(void Function(CommentModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommentModel build() => _build();

  _$CommentModel _build() {
    _$CommentModel _$result;
    try {
      _$result = _$v ??
          new _$CommentModel._(
              createdBy: createdBy.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'CommentModel', 'id'),
              created: BuiltValueNullFieldError.checkNotNull(
                  created, r'CommentModel', 'created'),
              updated: BuiltValueNullFieldError.checkNotNull(
                  updated, r'CommentModel', 'updated'),
              content: BuiltValueNullFieldError.checkNotNull(
                  content, r'CommentModel', 'content'),
              isHidden: BuiltValueNullFieldError.checkNotNull(
                  isHidden, r'CommentModel', 'isHidden'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdBy';
        createdBy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CommentModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$User extends User {
  @override
  final int? id;
  @override
  final String? arcode;
  @override
  final bool enabled;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final BuiltList<String>? otherNames;
  @override
  final int? profilePicture;
  @override
  final String? country;
  @override
  final String? referralCode;
  @override
  final String? referrer;
  @override
  final String? bcWallet;
  @override
  final int? created;
  @override
  final int? updated;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates))._build();

  _$User._(
      {this.id,
      this.arcode,
      required this.enabled,
      this.firstName,
      this.lastName,
      this.otherNames,
      this.profilePicture,
      this.country,
      this.referralCode,
      this.referrer,
      this.bcWallet,
      this.created,
      this.updated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enabled, r'User', 'enabled');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        arcode == other.arcode &&
        enabled == other.enabled &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        otherNames == other.otherNames &&
        profilePicture == other.profilePicture &&
        country == other.country &&
        referralCode == other.referralCode &&
        referrer == other.referrer &&
        bcWallet == other.bcWallet &&
        created == other.created &&
        updated == other.updated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, arcode.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, otherNames.hashCode);
    _$hash = $jc(_$hash, profilePicture.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, referralCode.hashCode);
    _$hash = $jc(_$hash, referrer.hashCode);
    _$hash = $jc(_$hash, bcWallet.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('id', id)
          ..add('arcode', arcode)
          ..add('enabled', enabled)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('otherNames', otherNames)
          ..add('profilePicture', profilePicture)
          ..add('country', country)
          ..add('referralCode', referralCode)
          ..add('referrer', referrer)
          ..add('bcWallet', bcWallet)
          ..add('created', created)
          ..add('updated', updated))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _arcode;
  String? get arcode => _$this._arcode;
  set arcode(String? arcode) => _$this._arcode = arcode;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  ListBuilder<String>? _otherNames;
  ListBuilder<String> get otherNames =>
      _$this._otherNames ??= new ListBuilder<String>();
  set otherNames(ListBuilder<String>? otherNames) =>
      _$this._otherNames = otherNames;

  int? _profilePicture;
  int? get profilePicture => _$this._profilePicture;
  set profilePicture(int? profilePicture) =>
      _$this._profilePicture = profilePicture;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _referralCode;
  String? get referralCode => _$this._referralCode;
  set referralCode(String? referralCode) => _$this._referralCode = referralCode;

  String? _referrer;
  String? get referrer => _$this._referrer;
  set referrer(String? referrer) => _$this._referrer = referrer;

  String? _bcWallet;
  String? get bcWallet => _$this._bcWallet;
  set bcWallet(String? bcWallet) => _$this._bcWallet = bcWallet;

  int? _created;
  int? get created => _$this._created;
  set created(int? created) => _$this._created = created;

  int? _updated;
  int? get updated => _$this._updated;
  set updated(int? updated) => _$this._updated = updated;

  UserBuilder() {
    User._initializeBuilder(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _arcode = $v.arcode;
      _enabled = $v.enabled;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _otherNames = $v.otherNames?.toBuilder();
      _profilePicture = $v.profilePicture;
      _country = $v.country;
      _referralCode = $v.referralCode;
      _referrer = $v.referrer;
      _bcWallet = $v.bcWallet;
      _created = $v.created;
      _updated = $v.updated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              arcode: arcode,
              enabled: BuiltValueNullFieldError.checkNotNull(
                  enabled, r'User', 'enabled'),
              firstName: firstName,
              lastName: lastName,
              otherNames: _otherNames?.build(),
              profilePicture: profilePicture,
              country: country,
              referralCode: referralCode,
              referrer: referrer,
              bcWallet: bcWallet,
              created: created,
              updated: updated);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'otherNames';
        _otherNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
