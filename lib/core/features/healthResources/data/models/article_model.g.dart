// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArticleModel> _$articleModelSerializer =
    new _$ArticleModelSerializer();
Serializer<Media> _$mediaSerializer = new _$MediaSerializer();
Serializer<User> _$userSerializer = new _$UserSerializer();

class _$ArticleModelSerializer implements StructuredSerializer<ArticleModel> {
  @override
  final Iterable<Type> types = const [ArticleModel, _$ArticleModel];
  @override
  final String wireName = 'ArticleModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ArticleModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    value = object.views;
    if (value != null) {
      result
        ..add('views')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.links;
    if (value != null) {
      result
        ..add('links')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Media)])));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('createdBy')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(User)));
    }
    value = object.target;
    if (value != null) {
      result
        ..add('target')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.isAvailable;
    if (value != null) {
      result
        ..add('isAvailable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.didLike;
    if (value != null) {
      result
        ..add('didLike')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isDeleted;
    if (value != null) {
      result
        ..add('isDeleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ArticleModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleModelBuilder();

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
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'views':
          result.views = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Media)]))!
              as BuiltList<Object?>);
          break;
        case 'createdBy':
          result.createdBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(User))! as User);
          break;
        case 'target':
          result.target.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'isAvailable':
          result.isAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'didLike':
          result.didLike = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isDeleted':
          result.isDeleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$MediaSerializer implements StructuredSerializer<Media> {
  @override
  final Iterable<Type> types = const [Media, _$Media];
  @override
  final String wireName = 'Media';

  @override
  Iterable<Object?> serialize(Serializers serializers, Media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.systemName;
    if (value != null) {
      result
        ..add('systemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
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
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isDeleted;
    if (value != null) {
      result
        ..add('isDeleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  Media deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'systemName':
          result.systemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isDeleted':
          result.isDeleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ArticleModel extends ArticleModel {
  @override
  final int? id;
  @override
  final int? created;
  @override
  final int? updated;
  @override
  final int? views;
  @override
  final int? likes;
  @override
  final int? comments;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final BuiltList<String>? links;
  @override
  final BuiltList<Media>? media;
  @override
  final User? createdBy;
  @override
  final BuiltList<String>? target;
  @override
  final bool? isAvailable;
  @override
  final bool? didLike;
  @override
  final bool? isDeleted;

  factory _$ArticleModel([void Function(ArticleModelBuilder)? updates]) =>
      (new ArticleModelBuilder()..update(updates))._build();

  _$ArticleModel._(
      {this.id,
      this.created,
      this.updated,
      this.views,
      this.likes,
      this.comments,
      this.title,
      this.content,
      this.links,
      this.media,
      this.createdBy,
      this.target,
      this.isAvailable,
      this.didLike,
      this.isDeleted})
      : super._();

  @override
  ArticleModel rebuild(void Function(ArticleModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleModelBuilder toBuilder() => new ArticleModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleModel &&
        id == other.id &&
        created == other.created &&
        updated == other.updated &&
        views == other.views &&
        likes == other.likes &&
        comments == other.comments &&
        title == other.title &&
        content == other.content &&
        links == other.links &&
        media == other.media &&
        createdBy == other.createdBy &&
        target == other.target &&
        isAvailable == other.isAvailable &&
        didLike == other.didLike &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, views.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, isAvailable.hashCode);
    _$hash = $jc(_$hash, didLike.hashCode);
    _$hash = $jc(_$hash, isDeleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticleModel')
          ..add('id', id)
          ..add('created', created)
          ..add('updated', updated)
          ..add('views', views)
          ..add('likes', likes)
          ..add('comments', comments)
          ..add('title', title)
          ..add('content', content)
          ..add('links', links)
          ..add('media', media)
          ..add('createdBy', createdBy)
          ..add('target', target)
          ..add('isAvailable', isAvailable)
          ..add('didLike', didLike)
          ..add('isDeleted', isDeleted))
        .toString();
  }
}

class ArticleModelBuilder
    implements Builder<ArticleModel, ArticleModelBuilder> {
  _$ArticleModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _created;
  int? get created => _$this._created;
  set created(int? created) => _$this._created = created;

  int? _updated;
  int? get updated => _$this._updated;
  set updated(int? updated) => _$this._updated = updated;

  int? _views;
  int? get views => _$this._views;
  set views(int? views) => _$this._views = views;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  int? _comments;
  int? get comments => _$this._comments;
  set comments(int? comments) => _$this._comments = comments;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ListBuilder<String>? _links;
  ListBuilder<String> get links => _$this._links ??= new ListBuilder<String>();
  set links(ListBuilder<String>? links) => _$this._links = links;

  ListBuilder<Media>? _media;
  ListBuilder<Media> get media => _$this._media ??= new ListBuilder<Media>();
  set media(ListBuilder<Media>? media) => _$this._media = media;

  UserBuilder? _createdBy;
  UserBuilder get createdBy => _$this._createdBy ??= new UserBuilder();
  set createdBy(UserBuilder? createdBy) => _$this._createdBy = createdBy;

  ListBuilder<String>? _target;
  ListBuilder<String> get target =>
      _$this._target ??= new ListBuilder<String>();
  set target(ListBuilder<String>? target) => _$this._target = target;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  bool? _didLike;
  bool? get didLike => _$this._didLike;
  set didLike(bool? didLike) => _$this._didLike = didLike;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(bool? isDeleted) => _$this._isDeleted = isDeleted;

  ArticleModelBuilder() {
    ArticleModel._initializeBuilder(this);
  }

  ArticleModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _created = $v.created;
      _updated = $v.updated;
      _views = $v.views;
      _likes = $v.likes;
      _comments = $v.comments;
      _title = $v.title;
      _content = $v.content;
      _links = $v.links?.toBuilder();
      _media = $v.media?.toBuilder();
      _createdBy = $v.createdBy?.toBuilder();
      _target = $v.target?.toBuilder();
      _isAvailable = $v.isAvailable;
      _didLike = $v.didLike;
      _isDeleted = $v.isDeleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticleModel;
  }

  @override
  void update(void Function(ArticleModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleModel build() => _build();

  _$ArticleModel _build() {
    _$ArticleModel _$result;
    try {
      _$result = _$v ??
          new _$ArticleModel._(
              id: id,
              created: created,
              updated: updated,
              views: views,
              likes: likes,
              comments: comments,
              title: title,
              content: content,
              links: _links?.build(),
              media: _media?.build(),
              createdBy: _createdBy?.build(),
              target: _target?.build(),
              isAvailable: isAvailable,
              didLike: didLike,
              isDeleted: isDeleted);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'createdBy';
        _createdBy?.build();
        _$failedField = 'target';
        _target?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ArticleModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Media extends Media {
  @override
  final String? name;
  @override
  final String? systemName;
  @override
  final String? type;
  @override
  final String? path;
  @override
  final int? size;
  @override
  final bool? isDeleted;
  @override
  final int? id;
  @override
  final int? created;
  @override
  final int? updated;

  factory _$Media([void Function(MediaBuilder)? updates]) =>
      (new MediaBuilder()..update(updates))._build();

  _$Media._(
      {this.name,
      this.systemName,
      this.type,
      this.path,
      this.size,
      this.isDeleted,
      this.id,
      this.created,
      this.updated})
      : super._();

  @override
  Media rebuild(void Function(MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaBuilder toBuilder() => new MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Media &&
        name == other.name &&
        systemName == other.systemName &&
        type == other.type &&
        path == other.path &&
        size == other.size &&
        isDeleted == other.isDeleted &&
        id == other.id &&
        created == other.created &&
        updated == other.updated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, systemName.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, isDeleted.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Media')
          ..add('name', name)
          ..add('systemName', systemName)
          ..add('type', type)
          ..add('path', path)
          ..add('size', size)
          ..add('isDeleted', isDeleted)
          ..add('id', id)
          ..add('created', created)
          ..add('updated', updated))
        .toString();
  }
}

class MediaBuilder implements Builder<Media, MediaBuilder> {
  _$Media? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _systemName;
  String? get systemName => _$this._systemName;
  set systemName(String? systemName) => _$this._systemName = systemName;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(bool? isDeleted) => _$this._isDeleted = isDeleted;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _created;
  int? get created => _$this._created;
  set created(int? created) => _$this._created = created;

  int? _updated;
  int? get updated => _$this._updated;
  set updated(int? updated) => _$this._updated = updated;

  MediaBuilder() {
    Media._initializeBuilder(this);
  }

  MediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _systemName = $v.systemName;
      _type = $v.type;
      _path = $v.path;
      _size = $v.size;
      _isDeleted = $v.isDeleted;
      _id = $v.id;
      _created = $v.created;
      _updated = $v.updated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Media;
  }

  @override
  void update(void Function(MediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Media build() => _build();

  _$Media _build() {
    final _$result = _$v ??
        new _$Media._(
            name: name,
            systemName: systemName,
            type: type,
            path: path,
            size: size,
            isDeleted: isDeleted,
            id: id,
            created: created,
            updated: updated);
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
