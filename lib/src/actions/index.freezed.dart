// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InitializeAppTearOff {
  const _$InitializeAppTearOff();

// ignore: unused_element
  InitializeApp$ call() {
    return const InitializeApp$();
  }

// ignore: unused_element
  InitializeAppSuccessful successful(@nullable AppUser user) {
    return InitializeAppSuccessful(
      user,
    );
  }

// ignore: unused_element
  InitializeAppError error(Object error) {
    return InitializeAppError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InitializeApp = _$InitializeAppTearOff();

/// @nodoc
mixin _$InitializeApp {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $InitializeAppCopyWith<$Res> {
  factory $InitializeAppCopyWith(
          InitializeApp value, $Res Function(InitializeApp) then) =
      _$InitializeAppCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppCopyWith<$Res> {
  _$InitializeAppCopyWithImpl(this._value, this._then);

  final InitializeApp _value;
  // ignore: unused_field
  final $Res Function(InitializeApp) _then;
}

/// @nodoc
abstract class $InitializeApp$CopyWith<$Res> {
  factory $InitializeApp$CopyWith(
          InitializeApp$ value, $Res Function(InitializeApp$) then) =
      _$InitializeApp$CopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeApp$CopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeApp$CopyWith<$Res> {
  _$InitializeApp$CopyWithImpl(
      InitializeApp$ _value, $Res Function(InitializeApp$) _then)
      : super(_value, (v) => _then(v as InitializeApp$));

  @override
  InitializeApp$ get _value => super._value as InitializeApp$;
}

/// @nodoc
class _$InitializeApp$ implements InitializeApp$ {
  const _$InitializeApp$();

  @override
  String toString() {
    return 'InitializeApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeApp$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeApp$ implements InitializeApp {
  const factory InitializeApp$() = _$InitializeApp$;
}

/// @nodoc
abstract class $InitializeAppSuccessfulCopyWith<$Res> {
  factory $InitializeAppSuccessfulCopyWith(InitializeAppSuccessful value,
          $Res Function(InitializeAppSuccessful) then) =
      _$InitializeAppSuccessfulCopyWithImpl<$Res>;
  $Res call({@nullable AppUser user});
}

/// @nodoc
class _$InitializeAppSuccessfulCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppSuccessfulCopyWith<$Res> {
  _$InitializeAppSuccessfulCopyWithImpl(InitializeAppSuccessful _value,
      $Res Function(InitializeAppSuccessful) _then)
      : super(_value, (v) => _then(v as InitializeAppSuccessful));

  @override
  InitializeAppSuccessful get _value => super._value as InitializeAppSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(InitializeAppSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$InitializeAppSuccessful implements InitializeAppSuccessful {
  const _$InitializeAppSuccessful(@nullable this.user);

  @override
  @nullable
  final AppUser user;

  @override
  String toString() {
    return 'InitializeApp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      _$InitializeAppSuccessfulCopyWithImpl<InitializeAppSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeAppSuccessful implements InitializeApp {
  const factory InitializeAppSuccessful(@nullable AppUser user) =
      _$InitializeAppSuccessful;

  @nullable
  AppUser get user;
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith;
}

/// @nodoc
abstract class $InitializeAppErrorCopyWith<$Res> {
  factory $InitializeAppErrorCopyWith(
          InitializeAppError value, $Res Function(InitializeAppError) then) =
      _$InitializeAppErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$InitializeAppErrorCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppErrorCopyWith<$Res> {
  _$InitializeAppErrorCopyWithImpl(
      InitializeAppError _value, $Res Function(InitializeAppError) _then)
      : super(_value, (v) => _then(v as InitializeAppError));

  @override
  InitializeAppError get _value => super._value as InitializeAppError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(InitializeAppError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$InitializeAppError implements InitializeAppError {
  const _$InitializeAppError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'InitializeApp.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      _$InitializeAppErrorCopyWithImpl<InitializeAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeAppError implements InitializeApp, ErrorAction {
  const factory InitializeAppError(Object error) = _$InitializeAppError;

  Object get error;
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith;
}

/// @nodoc
class _$SetWallpaperTearOff {
  const _$SetWallpaperTearOff();

// ignore: unused_element
  SetWallpaper$ call(ByteData byteData) {
    return SetWallpaper$(
      byteData,
    );
  }

// ignore: unused_element
  SetWallpaperSuccessful successful(String result) {
    return SetWallpaperSuccessful(
      result,
    );
  }

// ignore: unused_element
  SetWallpaperError error(Object error) {
    return SetWallpaperError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetWallpaper = _$SetWallpaperTearOff();

/// @nodoc
mixin _$SetWallpaper {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(ByteData byteData), {
    @required Result successful(String result),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(ByteData byteData), {
    Result successful(String result),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SetWallpaper$ value), {
    @required Result successful(SetWallpaperSuccessful value),
    @required Result error(SetWallpaperError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SetWallpaper$ value), {
    Result successful(SetWallpaperSuccessful value),
    Result error(SetWallpaperError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SetWallpaperCopyWith<$Res> {
  factory $SetWallpaperCopyWith(
          SetWallpaper value, $Res Function(SetWallpaper) then) =
      _$SetWallpaperCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetWallpaperCopyWithImpl<$Res> implements $SetWallpaperCopyWith<$Res> {
  _$SetWallpaperCopyWithImpl(this._value, this._then);

  final SetWallpaper _value;
  // ignore: unused_field
  final $Res Function(SetWallpaper) _then;
}

/// @nodoc
abstract class $SetWallpaper$CopyWith<$Res> {
  factory $SetWallpaper$CopyWith(
          SetWallpaper$ value, $Res Function(SetWallpaper$) then) =
      _$SetWallpaper$CopyWithImpl<$Res>;
  $Res call({ByteData byteData});
}

/// @nodoc
class _$SetWallpaper$CopyWithImpl<$Res> extends _$SetWallpaperCopyWithImpl<$Res>
    implements $SetWallpaper$CopyWith<$Res> {
  _$SetWallpaper$CopyWithImpl(
      SetWallpaper$ _value, $Res Function(SetWallpaper$) _then)
      : super(_value, (v) => _then(v as SetWallpaper$));

  @override
  SetWallpaper$ get _value => super._value as SetWallpaper$;

  @override
  $Res call({
    Object byteData = freezed,
  }) {
    return _then(SetWallpaper$(
      byteData == freezed ? _value.byteData : byteData as ByteData,
    ));
  }
}

/// @nodoc
class _$SetWallpaper$ implements SetWallpaper$ {
  const _$SetWallpaper$(this.byteData) : assert(byteData != null);

  @override
  final ByteData byteData;

  @override
  String toString() {
    return 'SetWallpaper(byteData: $byteData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetWallpaper$ &&
            (identical(other.byteData, byteData) ||
                const DeepCollectionEquality()
                    .equals(other.byteData, byteData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(byteData);

  @override
  $SetWallpaper$CopyWith<SetWallpaper$> get copyWith =>
      _$SetWallpaper$CopyWithImpl<SetWallpaper$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(ByteData byteData), {
    @required Result successful(String result),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(byteData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(ByteData byteData), {
    Result successful(String result),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(byteData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SetWallpaper$ value), {
    @required Result successful(SetWallpaperSuccessful value),
    @required Result error(SetWallpaperError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SetWallpaper$ value), {
    Result successful(SetWallpaperSuccessful value),
    Result error(SetWallpaperError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SetWallpaper$ implements SetWallpaper {
  const factory SetWallpaper$(ByteData byteData) = _$SetWallpaper$;

  ByteData get byteData;
  $SetWallpaper$CopyWith<SetWallpaper$> get copyWith;
}

/// @nodoc
abstract class $SetWallpaperSuccessfulCopyWith<$Res> {
  factory $SetWallpaperSuccessfulCopyWith(SetWallpaperSuccessful value,
          $Res Function(SetWallpaperSuccessful) then) =
      _$SetWallpaperSuccessfulCopyWithImpl<$Res>;
  $Res call({String result});
}

/// @nodoc
class _$SetWallpaperSuccessfulCopyWithImpl<$Res>
    extends _$SetWallpaperCopyWithImpl<$Res>
    implements $SetWallpaperSuccessfulCopyWith<$Res> {
  _$SetWallpaperSuccessfulCopyWithImpl(SetWallpaperSuccessful _value,
      $Res Function(SetWallpaperSuccessful) _then)
      : super(_value, (v) => _then(v as SetWallpaperSuccessful));

  @override
  SetWallpaperSuccessful get _value => super._value as SetWallpaperSuccessful;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(SetWallpaperSuccessful(
      result == freezed ? _value.result : result as String,
    ));
  }
}

/// @nodoc
class _$SetWallpaperSuccessful implements SetWallpaperSuccessful {
  const _$SetWallpaperSuccessful(this.result) : assert(result != null);

  @override
  final String result;

  @override
  String toString() {
    return 'SetWallpaper.successful(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetWallpaperSuccessful &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $SetWallpaperSuccessfulCopyWith<SetWallpaperSuccessful> get copyWith =>
      _$SetWallpaperSuccessfulCopyWithImpl<SetWallpaperSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(ByteData byteData), {
    @required Result successful(String result),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(ByteData byteData), {
    Result successful(String result),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SetWallpaper$ value), {
    @required Result successful(SetWallpaperSuccessful value),
    @required Result error(SetWallpaperError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SetWallpaper$ value), {
    Result successful(SetWallpaperSuccessful value),
    Result error(SetWallpaperError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SetWallpaperSuccessful implements SetWallpaper {
  const factory SetWallpaperSuccessful(String result) =
      _$SetWallpaperSuccessful;

  String get result;
  $SetWallpaperSuccessfulCopyWith<SetWallpaperSuccessful> get copyWith;
}

/// @nodoc
abstract class $SetWallpaperErrorCopyWith<$Res> {
  factory $SetWallpaperErrorCopyWith(
          SetWallpaperError value, $Res Function(SetWallpaperError) then) =
      _$SetWallpaperErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SetWallpaperErrorCopyWithImpl<$Res>
    extends _$SetWallpaperCopyWithImpl<$Res>
    implements $SetWallpaperErrorCopyWith<$Res> {
  _$SetWallpaperErrorCopyWithImpl(
      SetWallpaperError _value, $Res Function(SetWallpaperError) _then)
      : super(_value, (v) => _then(v as SetWallpaperError));

  @override
  SetWallpaperError get _value => super._value as SetWallpaperError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SetWallpaperError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SetWallpaperError implements SetWallpaperError {
  const _$SetWallpaperError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SetWallpaper.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetWallpaperError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SetWallpaperErrorCopyWith<SetWallpaperError> get copyWith =>
      _$SetWallpaperErrorCopyWithImpl<SetWallpaperError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(ByteData byteData), {
    @required Result successful(String result),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(ByteData byteData), {
    Result successful(String result),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SetWallpaper$ value), {
    @required Result successful(SetWallpaperSuccessful value),
    @required Result error(SetWallpaperError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SetWallpaper$ value), {
    Result successful(SetWallpaperSuccessful value),
    Result error(SetWallpaperError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SetWallpaperError implements SetWallpaper, ErrorAction {
  const factory SetWallpaperError(Object error) = _$SetWallpaperError;

  Object get error;
  $SetWallpaperErrorCopyWith<SetWallpaperError> get copyWith;
}
