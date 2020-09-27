// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of auth_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

// ignore: unused_element
  Login$ start(
      {@required String email,
      @required String password,
      @required void Function(AppAction) result,
      String pendingId = _kLoginPendingId}) {
    return Login$(
      email: email,
      password: password,
      result: result,
      pendingId: pendingId,
    );
  }

// ignore: unused_element
  LoginSuccessful successful(AppUser user,
      [String pendingId = _kLoginPendingId]) {
    return LoginSuccessful(
      user,
      pendingId,
    );
  }

// ignore: unused_element
  LoginError error(Object error, [String pendingId = _kLoginPendingId]) {
    return LoginError(
      error,
      pendingId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  String get pendingId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(String email, String password,
            void Function(AppAction) result, String pendingId),
    @required Result successful(AppUser user, String pendingId),
    @required Result error(Object error, String pendingId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String email, String password, void Function(AppAction) result,
        String pendingId),
    Result successful(AppUser user, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(Login$ value),
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(Login$ value),
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  });

  $LoginCopyWith<Login> get copyWith;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;

  @override
  $Res call({
    Object pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

/// @nodoc
abstract class $Login$CopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory $Login$CopyWith(Login$ value, $Res Function(Login$) then) =
      _$Login$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      void Function(AppAction) result,
      String pendingId});
}

/// @nodoc
class _$Login$CopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $Login$CopyWith<$Res> {
  _$Login$CopyWithImpl(Login$ _value, $Res Function(Login$) _then)
      : super(_value, (v) => _then(v as Login$));

  @override
  Login$ get _value => super._value as Login$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object result = freezed,
    Object pendingId = freezed,
  }) {
    return _then(Login$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      result: result == freezed
          ? _value.result
          : result as void Function(AppAction),
      pendingId: pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionStart)

/// @nodoc
class _$Login$ implements Login$ {
  const _$Login$(
      {@required this.email,
      @required this.password,
      @required this.result,
      this.pendingId = _kLoginPendingId})
      : assert(email != null),
        assert(password != null),
        assert(result != null),
        assert(pendingId != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final void Function(AppAction) result;
  @JsonKey(defaultValue: _kLoginPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'Login.start(email: $email, password: $password, result: $result, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $Login$CopyWith<Login$> get copyWith =>
      _$Login$CopyWithImpl<Login$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(String email, String password,
            void Function(AppAction) result, String pendingId),
    @required Result successful(AppUser user, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(email, password, result, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String email, String password, void Function(AppAction) result,
        String pendingId),
    Result successful(AppUser user, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(email, password, result, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(Login$ value),
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(Login$ value),
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class Login$ implements Login, ActionStart {
  const factory Login$(
      {@required String email,
      @required String password,
      @required void Function(AppAction) result,
      String pendingId}) = _$Login$;

  String get email;
  String get password;
  void Function(AppAction) get result;
  @override
  String get pendingId;
  @override
  $Login$CopyWith<Login$> get copyWith;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(
          LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({AppUser user, String pendingId});
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(
      LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
      : super(_value, (v) => _then(v as LoginSuccessful));

  @override
  LoginSuccessful get _value => super._value as LoginSuccessful;

  @override
  $Res call({
    Object user = freezed,
    Object pendingId = freezed,
  }) {
    return _then(LoginSuccessful(
      user == freezed ? _value.user : user as AppUser,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)

/// @nodoc
class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user, [this.pendingId = _kLoginPendingId])
      : assert(user != null),
        assert(pendingId != null);

  @override
  final AppUser user;
  @JsonKey(defaultValue: _kLoginPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'Login.successful(user: $user, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      _$LoginSuccessfulCopyWithImpl<LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(String email, String password,
            void Function(AppAction) result, String pendingId),
    @required Result successful(AppUser user, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(user, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String email, String password, void Function(AppAction) result,
        String pendingId),
    Result successful(AppUser user, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(Login$ value),
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(Login$ value),
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login, ActionDone {
  const factory LoginSuccessful(AppUser user, [String pendingId]) =
      _$LoginSuccessful;

  AppUser get user;
  @override
  String get pendingId;
  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, String pendingId});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object error = freezed,
    Object pendingId = freezed,
  }) {
    return _then(LoginError(
      error == freezed ? _value.error : error,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)
@Implements(ErrorAction)

/// @nodoc
class _$LoginError implements LoginError {
  const _$LoginError(this.error, [this.pendingId = _kLoginPendingId])
      : assert(error != null),
        assert(pendingId != null);

  @override
  final Object error;
  @JsonKey(defaultValue: _kLoginPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'Login.error(error: $error, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(String email, String password,
            void Function(AppAction) result, String pendingId),
    @required Result successful(AppUser user, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String email, String password, void Function(AppAction) result,
        String pendingId),
    Result successful(AppUser user, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(Login$ value),
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(Login$ value),
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ActionDone, ErrorAction {
  const factory LoginError(Object error, [String pendingId]) = _$LoginError;

  Object get error;
  @override
  String get pendingId;
  @override
  $LoginErrorCopyWith<LoginError> get copyWith;
}

/// @nodoc
class _$LogoutTearOff {
  const _$LogoutTearOff();

// ignore: unused_element
  Logout$ call() {
    return const Logout$();
  }

// ignore: unused_element
  LogoutSuccessful successful() {
    return const LogoutSuccessful();
  }

// ignore: unused_element
  LogoutError error(Object error) {
    return LogoutError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Logout = _$LogoutTearOff();

/// @nodoc
mixin _$Logout {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res> implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._value, this._then);

  final Logout _value;
  // ignore: unused_field
  final $Res Function(Logout) _then;
}

/// @nodoc
abstract class $Logout$CopyWith<$Res> {
  factory $Logout$CopyWith(Logout$ value, $Res Function(Logout$) then) =
      _$Logout$CopyWithImpl<$Res>;
}

/// @nodoc
class _$Logout$CopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $Logout$CopyWith<$Res> {
  _$Logout$CopyWithImpl(Logout$ _value, $Res Function(Logout$) _then)
      : super(_value, (v) => _then(v as Logout$));

  @override
  Logout$ get _value => super._value as Logout$;
}

/// @nodoc
class _$Logout$ implements Logout$ {
  const _$Logout$();

  @override
  String toString() {
    return 'Logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Logout$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
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
    Result successful(),
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
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Logout$ implements Logout {
  const factory Logout$() = _$Logout$;
}

/// @nodoc
abstract class $LogoutSuccessfulCopyWith<$Res> {
  factory $LogoutSuccessfulCopyWith(
          LogoutSuccessful value, $Res Function(LogoutSuccessful) then) =
      _$LogoutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutSuccessfulCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $LogoutSuccessfulCopyWith<$Res> {
  _$LogoutSuccessfulCopyWithImpl(
      LogoutSuccessful _value, $Res Function(LogoutSuccessful) _then)
      : super(_value, (v) => _then(v as LogoutSuccessful));

  @override
  LogoutSuccessful get _value => super._value as LogoutSuccessful;
}

/// @nodoc
class _$LogoutSuccessful implements LogoutSuccessful {
  const _$LogoutSuccessful();

  @override
  String toString() {
    return 'Logout.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogoutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LogoutSuccessful implements Logout {
  const factory LogoutSuccessful() = _$LogoutSuccessful;
}

/// @nodoc
abstract class $LogoutErrorCopyWith<$Res> {
  factory $LogoutErrorCopyWith(
          LogoutError value, $Res Function(LogoutError) then) =
      _$LogoutErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LogoutErrorCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $LogoutErrorCopyWith<$Res> {
  _$LogoutErrorCopyWithImpl(
      LogoutError _value, $Res Function(LogoutError) _then)
      : super(_value, (v) => _then(v as LogoutError));

  @override
  LogoutError get _value => super._value as LogoutError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LogoutError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LogoutError implements LogoutError {
  const _$LogoutError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'Logout.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LogoutError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LogoutErrorCopyWith<LogoutError> get copyWith =>
      _$LogoutErrorCopyWithImpl<LogoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
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
    Result successful(),
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
    Result $default(Logout$ value), {
    @required Result successful(LogoutSuccessful value),
    @required Result error(LogoutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Logout$ value), {
    Result successful(LogoutSuccessful value),
    Result error(LogoutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LogoutError implements Logout, ErrorAction {
  const factory LogoutError(Object error) = _$LogoutError;

  Object get error;
  $LogoutErrorCopyWith<LogoutError> get copyWith;
}

/// @nodoc
class _$SignUpTearOff {
  const _$SignUpTearOff();

// ignore: unused_element
  SignUp$ start(
      {@required String email,
      @required String password,
      @required String firstName,
      @required String lastName,
      @required void Function(AppAction) result,
      String pendingId = _kSignUpPendingId}) {
    return SignUp$(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      result: result,
      pendingId: pendingId,
    );
  }

// ignore: unused_element
  SignUpSuccessful successful(AppUser user,
      [String pendingId = _kSignUpPendingId]) {
    return SignUpSuccessful(
      user,
      pendingId,
    );
  }

// ignore: unused_element
  SignUpError error(Object error, [String pendingId = _kSignUpPendingId]) {
    return SignUpError(
      error,
      pendingId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUp = _$SignUpTearOff();

/// @nodoc
mixin _$SignUp {
  String get pendingId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(String email, String password, String firstName,
            String lastName, void Function(AppAction) result, String pendingId),
    @required Result successful(AppUser user, String pendingId),
    @required Result error(Object error, String pendingId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String email, String password, String firstName,
        String lastName, void Function(AppAction) result, String pendingId),
    Result successful(AppUser user, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(SignUp$ value),
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(SignUp$ value),
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  });

  $SignUpCopyWith<SignUp> get copyWith;
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(this._value, this._then);

  final SignUp _value;
  // ignore: unused_field
  final $Res Function(SignUp) _then;

  @override
  $Res call({
    Object pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

/// @nodoc
abstract class $SignUp$CopyWith<$Res> implements $SignUpCopyWith<$Res> {
  factory $SignUp$CopyWith(SignUp$ value, $Res Function(SignUp$) then) =
      _$SignUp$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      String firstName,
      String lastName,
      void Function(AppAction) result,
      String pendingId});
}

/// @nodoc
class _$SignUp$CopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUp$CopyWith<$Res> {
  _$SignUp$CopyWithImpl(SignUp$ _value, $Res Function(SignUp$) _then)
      : super(_value, (v) => _then(v as SignUp$));

  @override
  SignUp$ get _value => super._value as SignUp$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object result = freezed,
    Object pendingId = freezed,
  }) {
    return _then(SignUp$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      result: result == freezed
          ? _value.result
          : result as void Function(AppAction),
      pendingId: pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionStart)

/// @nodoc
class _$SignUp$ implements SignUp$ {
  const _$SignUp$(
      {@required this.email,
      @required this.password,
      @required this.firstName,
      @required this.lastName,
      @required this.result,
      this.pendingId = _kSignUpPendingId})
      : assert(email != null),
        assert(password != null),
        assert(firstName != null),
        assert(lastName != null),
        assert(result != null),
        assert(pendingId != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final void Function(AppAction) result;
  @JsonKey(defaultValue: _kSignUpPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SignUp.start(email: $email, password: $password, firstName: $firstName, lastName: $lastName, result: $result, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUp$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $SignUp$CopyWith<SignUp$> get copyWith =>
      _$SignUp$CopyWithImpl<SignUp$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(String email, String password, String firstName,
            String lastName, void Function(AppAction) result, String pendingId),
    @required Result successful(AppUser user, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(email, password, firstName, lastName, result, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String email, String password, String firstName,
        String lastName, void Function(AppAction) result, String pendingId),
    Result successful(AppUser user, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(email, password, firstName, lastName, result, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(SignUp$ value),
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(SignUp$ value),
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class SignUp$ implements SignUp, ActionStart {
  const factory SignUp$(
      {@required String email,
      @required String password,
      @required String firstName,
      @required String lastName,
      @required void Function(AppAction) result,
      String pendingId}) = _$SignUp$;

  String get email;
  String get password;
  String get firstName;
  String get lastName;
  void Function(AppAction) get result;
  @override
  String get pendingId;
  @override
  $SignUp$CopyWith<SignUp$> get copyWith;
}

/// @nodoc
abstract class $SignUpSuccessfulCopyWith<$Res>
    implements $SignUpCopyWith<$Res> {
  factory $SignUpSuccessfulCopyWith(
          SignUpSuccessful value, $Res Function(SignUpSuccessful) then) =
      _$SignUpSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({AppUser user, String pendingId});
}

/// @nodoc
class _$SignUpSuccessfulCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUpSuccessfulCopyWith<$Res> {
  _$SignUpSuccessfulCopyWithImpl(
      SignUpSuccessful _value, $Res Function(SignUpSuccessful) _then)
      : super(_value, (v) => _then(v as SignUpSuccessful));

  @override
  SignUpSuccessful get _value => super._value as SignUpSuccessful;

  @override
  $Res call({
    Object user = freezed,
    Object pendingId = freezed,
  }) {
    return _then(SignUpSuccessful(
      user == freezed ? _value.user : user as AppUser,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)

/// @nodoc
class _$SignUpSuccessful implements SignUpSuccessful {
  const _$SignUpSuccessful(this.user, [this.pendingId = _kSignUpPendingId])
      : assert(user != null),
        assert(pendingId != null);

  @override
  final AppUser user;
  @JsonKey(defaultValue: _kSignUpPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SignUp.successful(user: $user, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith =>
      _$SignUpSuccessfulCopyWithImpl<SignUpSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(String email, String password, String firstName,
            String lastName, void Function(AppAction) result, String pendingId),
    @required Result successful(AppUser user, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(user, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String email, String password, String firstName,
        String lastName, void Function(AppAction) result, String pendingId),
    Result successful(AppUser user, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(SignUp$ value),
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(SignUp$ value),
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccessful implements SignUp, ActionDone {
  const factory SignUpSuccessful(AppUser user, [String pendingId]) =
      _$SignUpSuccessful;

  AppUser get user;
  @override
  String get pendingId;
  @override
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith;
}

/// @nodoc
abstract class $SignUpErrorCopyWith<$Res> implements $SignUpCopyWith<$Res> {
  factory $SignUpErrorCopyWith(
          SignUpError value, $Res Function(SignUpError) then) =
      _$SignUpErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, String pendingId});
}

/// @nodoc
class _$SignUpErrorCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUpErrorCopyWith<$Res> {
  _$SignUpErrorCopyWithImpl(
      SignUpError _value, $Res Function(SignUpError) _then)
      : super(_value, (v) => _then(v as SignUpError));

  @override
  SignUpError get _value => super._value as SignUpError;

  @override
  $Res call({
    Object error = freezed,
    Object pendingId = freezed,
  }) {
    return _then(SignUpError(
      error == freezed ? _value.error : error,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)
@Implements(ErrorAction)

/// @nodoc
class _$SignUpError implements SignUpError {
  const _$SignUpError(this.error, [this.pendingId = _kSignUpPendingId])
      : assert(error != null),
        assert(pendingId != null);

  @override
  final Object error;
  @JsonKey(defaultValue: _kSignUpPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SignUp.error(error: $error, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $SignUpErrorCopyWith<SignUpError> get copyWith =>
      _$SignUpErrorCopyWithImpl<SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(String email, String password, String firstName,
            String lastName, void Function(AppAction) result, String pendingId),
    @required Result successful(AppUser user, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String email, String password, String firstName,
        String lastName, void Function(AppAction) result, String pendingId),
    Result successful(AppUser user, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(SignUp$ value),
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(SignUp$ value),
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpError implements SignUp, ActionDone, ErrorAction {
  const factory SignUpError(Object error, [String pendingId]) = _$SignUpError;

  Object get error;
  @override
  String get pendingId;
  @override
  $SignUpErrorCopyWith<SignUpError> get copyWith;
}

/// @nodoc
class _$UpdateUserDetailsTearOff {
  const _$UpdateUserDetailsTearOff();

// ignore: unused_element
  UpdateUserDetails$ call(AppUser user) {
    return UpdateUserDetails$(
      user,
    );
  }

// ignore: unused_element
  UpdateUserDetailsSuccessful successful() {
    return const UpdateUserDetailsSuccessful();
  }

// ignore: unused_element
  UpdateUserDetailsError error(Object error) {
    return UpdateUserDetailsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateUserDetails = _$UpdateUserDetailsTearOff();

/// @nodoc
mixin _$UpdateUserDetails {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(AppUser user), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(AppUser user), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateUserDetails$ value), {
    @required Result successful(UpdateUserDetailsSuccessful value),
    @required Result error(UpdateUserDetailsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateUserDetails$ value), {
    Result successful(UpdateUserDetailsSuccessful value),
    Result error(UpdateUserDetailsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateUserDetailsCopyWith<$Res> {
  factory $UpdateUserDetailsCopyWith(
          UpdateUserDetails value, $Res Function(UpdateUserDetails) then) =
      _$UpdateUserDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateUserDetailsCopyWithImpl<$Res>
    implements $UpdateUserDetailsCopyWith<$Res> {
  _$UpdateUserDetailsCopyWithImpl(this._value, this._then);

  final UpdateUserDetails _value;
  // ignore: unused_field
  final $Res Function(UpdateUserDetails) _then;
}

/// @nodoc
abstract class $UpdateUserDetails$CopyWith<$Res> {
  factory $UpdateUserDetails$CopyWith(
          UpdateUserDetails$ value, $Res Function(UpdateUserDetails$) then) =
      _$UpdateUserDetails$CopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$UpdateUserDetails$CopyWithImpl<$Res>
    extends _$UpdateUserDetailsCopyWithImpl<$Res>
    implements $UpdateUserDetails$CopyWith<$Res> {
  _$UpdateUserDetails$CopyWithImpl(
      UpdateUserDetails$ _value, $Res Function(UpdateUserDetails$) _then)
      : super(_value, (v) => _then(v as UpdateUserDetails$));

  @override
  UpdateUserDetails$ get _value => super._value as UpdateUserDetails$;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UpdateUserDetails$(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$UpdateUserDetails$ implements UpdateUserDetails$ {
  const _$UpdateUserDetails$(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'UpdateUserDetails(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserDetails$ &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $UpdateUserDetails$CopyWith<UpdateUserDetails$> get copyWith =>
      _$UpdateUserDetails$CopyWithImpl<UpdateUserDetails$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(AppUser user), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(AppUser user), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateUserDetails$ value), {
    @required Result successful(UpdateUserDetailsSuccessful value),
    @required Result error(UpdateUserDetailsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateUserDetails$ value), {
    Result successful(UpdateUserDetailsSuccessful value),
    Result error(UpdateUserDetailsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateUserDetails$ implements UpdateUserDetails {
  const factory UpdateUserDetails$(AppUser user) = _$UpdateUserDetails$;

  AppUser get user;
  $UpdateUserDetails$CopyWith<UpdateUserDetails$> get copyWith;
}

/// @nodoc
abstract class $UpdateUserDetailsSuccessfulCopyWith<$Res> {
  factory $UpdateUserDetailsSuccessfulCopyWith(
          UpdateUserDetailsSuccessful value,
          $Res Function(UpdateUserDetailsSuccessful) then) =
      _$UpdateUserDetailsSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateUserDetailsSuccessfulCopyWithImpl<$Res>
    extends _$UpdateUserDetailsCopyWithImpl<$Res>
    implements $UpdateUserDetailsSuccessfulCopyWith<$Res> {
  _$UpdateUserDetailsSuccessfulCopyWithImpl(UpdateUserDetailsSuccessful _value,
      $Res Function(UpdateUserDetailsSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateUserDetailsSuccessful));

  @override
  UpdateUserDetailsSuccessful get _value =>
      super._value as UpdateUserDetailsSuccessful;
}

/// @nodoc
class _$UpdateUserDetailsSuccessful implements UpdateUserDetailsSuccessful {
  const _$UpdateUserDetailsSuccessful();

  @override
  String toString() {
    return 'UpdateUserDetails.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateUserDetailsSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(AppUser user), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(AppUser user), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateUserDetails$ value), {
    @required Result successful(UpdateUserDetailsSuccessful value),
    @required Result error(UpdateUserDetailsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateUserDetails$ value), {
    Result successful(UpdateUserDetailsSuccessful value),
    Result error(UpdateUserDetailsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateUserDetailsSuccessful implements UpdateUserDetails {
  const factory UpdateUserDetailsSuccessful() = _$UpdateUserDetailsSuccessful;
}

/// @nodoc
abstract class $UpdateUserDetailsErrorCopyWith<$Res> {
  factory $UpdateUserDetailsErrorCopyWith(UpdateUserDetailsError value,
          $Res Function(UpdateUserDetailsError) then) =
      _$UpdateUserDetailsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateUserDetailsErrorCopyWithImpl<$Res>
    extends _$UpdateUserDetailsCopyWithImpl<$Res>
    implements $UpdateUserDetailsErrorCopyWith<$Res> {
  _$UpdateUserDetailsErrorCopyWithImpl(UpdateUserDetailsError _value,
      $Res Function(UpdateUserDetailsError) _then)
      : super(_value, (v) => _then(v as UpdateUserDetailsError));

  @override
  UpdateUserDetailsError get _value => super._value as UpdateUserDetailsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateUserDetailsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateUserDetailsError implements UpdateUserDetailsError {
  const _$UpdateUserDetailsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateUserDetails.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserDetailsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateUserDetailsErrorCopyWith<UpdateUserDetailsError> get copyWith =>
      _$UpdateUserDetailsErrorCopyWithImpl<UpdateUserDetailsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(AppUser user), {
    @required Result successful(),
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
    Result $default(AppUser user), {
    Result successful(),
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
    Result $default(UpdateUserDetails$ value), {
    @required Result successful(UpdateUserDetailsSuccessful value),
    @required Result error(UpdateUserDetailsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateUserDetails$ value), {
    Result successful(UpdateUserDetailsSuccessful value),
    Result error(UpdateUserDetailsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateUserDetailsError
    implements UpdateUserDetails, ErrorAction {
  const factory UpdateUserDetailsError(Object error) = _$UpdateUserDetailsError;

  Object get error;
  $UpdateUserDetailsErrorCopyWith<UpdateUserDetailsError> get copyWith;
}
