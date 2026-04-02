// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelConversation {
  String get id;
  String get title;
  String get lastMessage;
  DateTime get lastMessageAt;
  int get unreadCount;
  bool get isSynced;
  DateTime get updatedAt;

  /// Create a copy of ModelConversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelConversationCopyWith<ModelConversation> get copyWith =>
      _$ModelConversationCopyWithImpl<ModelConversation>(
          this as ModelConversation, _$identity);

  /// Serializes this ModelConversation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelConversation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageAt, lastMessageAt) ||
                other.lastMessageAt == lastMessageAt) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, lastMessage,
      lastMessageAt, unreadCount, isSynced, updatedAt);

  @override
  String toString() {
    return 'ModelConversation(id: $id, title: $title, lastMessage: $lastMessage, lastMessageAt: $lastMessageAt, unreadCount: $unreadCount, isSynced: $isSynced, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ModelConversationCopyWith<$Res> {
  factory $ModelConversationCopyWith(
          ModelConversation value, $Res Function(ModelConversation) _then) =
      _$ModelConversationCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String lastMessage,
      DateTime lastMessageAt,
      int unreadCount,
      bool isSynced,
      DateTime updatedAt});
}

/// @nodoc
class _$ModelConversationCopyWithImpl<$Res>
    implements $ModelConversationCopyWith<$Res> {
  _$ModelConversationCopyWithImpl(this._self, this._then);

  final ModelConversation _self;
  final $Res Function(ModelConversation) _then;

  /// Create a copy of ModelConversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? lastMessage = null,
    Object? lastMessageAt = null,
    Object? unreadCount = null,
    Object? isSynced = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: null == lastMessage
          ? _self.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageAt: null == lastMessageAt
          ? _self.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unreadCount: null == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSynced: null == isSynced
          ? _self.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [ModelConversation].
extension ModelConversationPatterns on ModelConversation {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ModelConversation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModelConversation() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ModelConversation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelConversation():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ModelConversation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelConversation() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String title,
            String lastMessage,
            DateTime lastMessageAt,
            int unreadCount,
            bool isSynced,
            DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModelConversation() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.lastMessage,
            _that.lastMessageAt,
            _that.unreadCount,
            _that.isSynced,
            _that.updatedAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String title,
            String lastMessage,
            DateTime lastMessageAt,
            int unreadCount,
            bool isSynced,
            DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelConversation():
        return $default(
            _that.id,
            _that.title,
            _that.lastMessage,
            _that.lastMessageAt,
            _that.unreadCount,
            _that.isSynced,
            _that.updatedAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String title,
            String lastMessage,
            DateTime lastMessageAt,
            int unreadCount,
            bool isSynced,
            DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelConversation() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.lastMessage,
            _that.lastMessageAt,
            _that.unreadCount,
            _that.isSynced,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ModelConversation implements ModelConversation {
  const _ModelConversation(
      {required this.id,
      required this.title,
      required this.lastMessage,
      required this.lastMessageAt,
      required this.unreadCount,
      required this.isSynced,
      required this.updatedAt});
  factory _ModelConversation.fromJson(Map<String, dynamic> json) =>
      _$ModelConversationFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String lastMessage;
  @override
  final DateTime lastMessageAt;
  @override
  final int unreadCount;
  @override
  final bool isSynced;
  @override
  final DateTime updatedAt;

  /// Create a copy of ModelConversation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelConversationCopyWith<_ModelConversation> get copyWith =>
      __$ModelConversationCopyWithImpl<_ModelConversation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelConversationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelConversation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageAt, lastMessageAt) ||
                other.lastMessageAt == lastMessageAt) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, lastMessage,
      lastMessageAt, unreadCount, isSynced, updatedAt);

  @override
  String toString() {
    return 'ModelConversation(id: $id, title: $title, lastMessage: $lastMessage, lastMessageAt: $lastMessageAt, unreadCount: $unreadCount, isSynced: $isSynced, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ModelConversationCopyWith<$Res>
    implements $ModelConversationCopyWith<$Res> {
  factory _$ModelConversationCopyWith(
          _ModelConversation value, $Res Function(_ModelConversation) _then) =
      __$ModelConversationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String lastMessage,
      DateTime lastMessageAt,
      int unreadCount,
      bool isSynced,
      DateTime updatedAt});
}

/// @nodoc
class __$ModelConversationCopyWithImpl<$Res>
    implements _$ModelConversationCopyWith<$Res> {
  __$ModelConversationCopyWithImpl(this._self, this._then);

  final _ModelConversation _self;
  final $Res Function(_ModelConversation) _then;

  /// Create a copy of ModelConversation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? lastMessage = null,
    Object? lastMessageAt = null,
    Object? unreadCount = null,
    Object? isSynced = null,
    Object? updatedAt = null,
  }) {
    return _then(_ModelConversation(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: null == lastMessage
          ? _self.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageAt: null == lastMessageAt
          ? _self.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unreadCount: null == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSynced: null == isSynced
          ? _self.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
