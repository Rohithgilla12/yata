// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of todo_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CompleteTodoTearOff {
  const _$CompleteTodoTearOff();

// ignore: unused_element
  CompleteTodo$ start(
      {@required Todo todo,
      @required void Function(AppAction) result,
      String pendingId = _kCompleteTodoPendingId}) {
    return CompleteTodo$(
      todo: todo,
      result: result,
      pendingId: pendingId,
    );
  }

// ignore: unused_element
  CompleteTodoSuccessful successful(
      [String pendingId = _kCompleteTodoPendingId]) {
    return CompleteTodoSuccessful(
      pendingId,
    );
  }

// ignore: unused_element
  CompleteTodoError error(Object error,
      [String pendingId = _kCompleteTodoPendingId]) {
    return CompleteTodoError(
      error,
      pendingId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CompleteTodo = _$CompleteTodoTearOff();

/// @nodoc
mixin _$CompleteTodo {
  String get pendingId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(
            Todo todo, void Function(AppAction) result, String pendingId),
    @required Result successful(String pendingId),
    @required Result error(Object error, String pendingId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(Todo todo, void Function(AppAction) result, String pendingId),
    Result successful(String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(CompleteTodo$ value),
    @required Result successful(CompleteTodoSuccessful value),
    @required Result error(CompleteTodoError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(CompleteTodo$ value),
    Result successful(CompleteTodoSuccessful value),
    Result error(CompleteTodoError value),
    @required Result orElse(),
  });

  $CompleteTodoCopyWith<CompleteTodo> get copyWith;
}

/// @nodoc
abstract class $CompleteTodoCopyWith<$Res> {
  factory $CompleteTodoCopyWith(
          CompleteTodo value, $Res Function(CompleteTodo) then) =
      _$CompleteTodoCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$CompleteTodoCopyWithImpl<$Res> implements $CompleteTodoCopyWith<$Res> {
  _$CompleteTodoCopyWithImpl(this._value, this._then);

  final CompleteTodo _value;
  // ignore: unused_field
  final $Res Function(CompleteTodo) _then;

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
abstract class $CompleteTodo$CopyWith<$Res>
    implements $CompleteTodoCopyWith<$Res> {
  factory $CompleteTodo$CopyWith(
          CompleteTodo$ value, $Res Function(CompleteTodo$) then) =
      _$CompleteTodo$CopyWithImpl<$Res>;
  @override
  $Res call({Todo todo, void Function(AppAction) result, String pendingId});
}

/// @nodoc
class _$CompleteTodo$CopyWithImpl<$Res> extends _$CompleteTodoCopyWithImpl<$Res>
    implements $CompleteTodo$CopyWith<$Res> {
  _$CompleteTodo$CopyWithImpl(
      CompleteTodo$ _value, $Res Function(CompleteTodo$) _then)
      : super(_value, (v) => _then(v as CompleteTodo$));

  @override
  CompleteTodo$ get _value => super._value as CompleteTodo$;

  @override
  $Res call({
    Object todo = freezed,
    Object result = freezed,
    Object pendingId = freezed,
  }) {
    return _then(CompleteTodo$(
      todo: todo == freezed ? _value.todo : todo as Todo,
      result: result == freezed
          ? _value.result
          : result as void Function(AppAction),
      pendingId: pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionStart)

/// @nodoc
class _$CompleteTodo$ implements CompleteTodo$ {
  const _$CompleteTodo$(
      {@required this.todo,
      @required this.result,
      this.pendingId = _kCompleteTodoPendingId})
      : assert(todo != null),
        assert(result != null),
        assert(pendingId != null);

  @override
  final Todo todo;
  @override
  final void Function(AppAction) result;
  @JsonKey(defaultValue: _kCompleteTodoPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'CompleteTodo.start(todo: $todo, result: $result, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteTodo$ &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(todo) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $CompleteTodo$CopyWith<CompleteTodo$> get copyWith =>
      _$CompleteTodo$CopyWithImpl<CompleteTodo$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(
            Todo todo, void Function(AppAction) result, String pendingId),
    @required Result successful(String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(todo, result, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(Todo todo, void Function(AppAction) result, String pendingId),
    Result successful(String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(todo, result, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(CompleteTodo$ value),
    @required Result successful(CompleteTodoSuccessful value),
    @required Result error(CompleteTodoError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(CompleteTodo$ value),
    Result successful(CompleteTodoSuccessful value),
    Result error(CompleteTodoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class CompleteTodo$ implements CompleteTodo, ActionStart {
  const factory CompleteTodo$(
      {@required Todo todo,
      @required void Function(AppAction) result,
      String pendingId}) = _$CompleteTodo$;

  Todo get todo;
  void Function(AppAction) get result;
  @override
  String get pendingId;
  @override
  $CompleteTodo$CopyWith<CompleteTodo$> get copyWith;
}

/// @nodoc
abstract class $CompleteTodoSuccessfulCopyWith<$Res>
    implements $CompleteTodoCopyWith<$Res> {
  factory $CompleteTodoSuccessfulCopyWith(CompleteTodoSuccessful value,
          $Res Function(CompleteTodoSuccessful) then) =
      _$CompleteTodoSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$CompleteTodoSuccessfulCopyWithImpl<$Res>
    extends _$CompleteTodoCopyWithImpl<$Res>
    implements $CompleteTodoSuccessfulCopyWith<$Res> {
  _$CompleteTodoSuccessfulCopyWithImpl(CompleteTodoSuccessful _value,
      $Res Function(CompleteTodoSuccessful) _then)
      : super(_value, (v) => _then(v as CompleteTodoSuccessful));

  @override
  CompleteTodoSuccessful get _value => super._value as CompleteTodoSuccessful;

  @override
  $Res call({
    Object pendingId = freezed,
  }) {
    return _then(CompleteTodoSuccessful(
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)

/// @nodoc
class _$CompleteTodoSuccessful implements CompleteTodoSuccessful {
  const _$CompleteTodoSuccessful([this.pendingId = _kCompleteTodoPendingId])
      : assert(pendingId != null);

  @JsonKey(defaultValue: _kCompleteTodoPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'CompleteTodo.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteTodoSuccessful &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pendingId);

  @override
  $CompleteTodoSuccessfulCopyWith<CompleteTodoSuccessful> get copyWith =>
      _$CompleteTodoSuccessfulCopyWithImpl<CompleteTodoSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(
            Todo todo, void Function(AppAction) result, String pendingId),
    @required Result successful(String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(Todo todo, void Function(AppAction) result, String pendingId),
    Result successful(String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(CompleteTodo$ value),
    @required Result successful(CompleteTodoSuccessful value),
    @required Result error(CompleteTodoError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(CompleteTodo$ value),
    Result successful(CompleteTodoSuccessful value),
    Result error(CompleteTodoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CompleteTodoSuccessful implements CompleteTodo, ActionDone {
  const factory CompleteTodoSuccessful([String pendingId]) =
      _$CompleteTodoSuccessful;

  @override
  String get pendingId;
  @override
  $CompleteTodoSuccessfulCopyWith<CompleteTodoSuccessful> get copyWith;
}

/// @nodoc
abstract class $CompleteTodoErrorCopyWith<$Res>
    implements $CompleteTodoCopyWith<$Res> {
  factory $CompleteTodoErrorCopyWith(
          CompleteTodoError value, $Res Function(CompleteTodoError) then) =
      _$CompleteTodoErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, String pendingId});
}

/// @nodoc
class _$CompleteTodoErrorCopyWithImpl<$Res>
    extends _$CompleteTodoCopyWithImpl<$Res>
    implements $CompleteTodoErrorCopyWith<$Res> {
  _$CompleteTodoErrorCopyWithImpl(
      CompleteTodoError _value, $Res Function(CompleteTodoError) _then)
      : super(_value, (v) => _then(v as CompleteTodoError));

  @override
  CompleteTodoError get _value => super._value as CompleteTodoError;

  @override
  $Res call({
    Object error = freezed,
    Object pendingId = freezed,
  }) {
    return _then(CompleteTodoError(
      error == freezed ? _value.error : error,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)
@Implements(ErrorAction)

/// @nodoc
class _$CompleteTodoError implements CompleteTodoError {
  const _$CompleteTodoError(this.error,
      [this.pendingId = _kCompleteTodoPendingId])
      : assert(error != null),
        assert(pendingId != null);

  @override
  final Object error;
  @JsonKey(defaultValue: _kCompleteTodoPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'CompleteTodo.error(error: $error, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteTodoError &&
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
  $CompleteTodoErrorCopyWith<CompleteTodoError> get copyWith =>
      _$CompleteTodoErrorCopyWithImpl<CompleteTodoError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(
            Todo todo, void Function(AppAction) result, String pendingId),
    @required Result successful(String pendingId),
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
    Result start(Todo todo, void Function(AppAction) result, String pendingId),
    Result successful(String pendingId),
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
    @required Result start(CompleteTodo$ value),
    @required Result successful(CompleteTodoSuccessful value),
    @required Result error(CompleteTodoError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(CompleteTodo$ value),
    Result successful(CompleteTodoSuccessful value),
    Result error(CompleteTodoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CompleteTodoError
    implements CompleteTodo, ActionDone, ErrorAction {
  const factory CompleteTodoError(Object error, [String pendingId]) =
      _$CompleteTodoError;

  Object get error;
  @override
  String get pendingId;
  @override
  $CompleteTodoErrorCopyWith<CompleteTodoError> get copyWith;
}

/// @nodoc
class _$CreateTodoTearOff {
  const _$CreateTodoTearOff();

// ignore: unused_element
  CreateTodo$ start(
      {@required String text,
      @required void Function(AppAction) result,
      String pendingId = _kCreateTodoPendingId}) {
    return CreateTodo$(
      text: text,
      result: result,
      pendingId: pendingId,
    );
  }

// ignore: unused_element
  CreateTodoSuccessful successful([String pendingId = _kCreateTodoPendingId]) {
    return CreateTodoSuccessful(
      pendingId,
    );
  }

// ignore: unused_element
  CreateTodoError error(Object error,
      [String pendingId = _kCreateTodoPendingId]) {
    return CreateTodoError(
      error,
      pendingId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateTodo = _$CreateTodoTearOff();

/// @nodoc
mixin _$CreateTodo {
  String get pendingId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(
            String text, void Function(AppAction) result, String pendingId),
    @required Result successful(String pendingId),
    @required Result error(Object error, String pendingId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(
        String text, void Function(AppAction) result, String pendingId),
    Result successful(String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(CreateTodo$ value),
    @required Result successful(CreateTodoSuccessful value),
    @required Result error(CreateTodoError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(CreateTodo$ value),
    Result successful(CreateTodoSuccessful value),
    Result error(CreateTodoError value),
    @required Result orElse(),
  });

  $CreateTodoCopyWith<CreateTodo> get copyWith;
}

/// @nodoc
abstract class $CreateTodoCopyWith<$Res> {
  factory $CreateTodoCopyWith(
          CreateTodo value, $Res Function(CreateTodo) then) =
      _$CreateTodoCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$CreateTodoCopyWithImpl<$Res> implements $CreateTodoCopyWith<$Res> {
  _$CreateTodoCopyWithImpl(this._value, this._then);

  final CreateTodo _value;
  // ignore: unused_field
  final $Res Function(CreateTodo) _then;

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
abstract class $CreateTodo$CopyWith<$Res> implements $CreateTodoCopyWith<$Res> {
  factory $CreateTodo$CopyWith(
          CreateTodo$ value, $Res Function(CreateTodo$) then) =
      _$CreateTodo$CopyWithImpl<$Res>;
  @override
  $Res call({String text, void Function(AppAction) result, String pendingId});
}

/// @nodoc
class _$CreateTodo$CopyWithImpl<$Res> extends _$CreateTodoCopyWithImpl<$Res>
    implements $CreateTodo$CopyWith<$Res> {
  _$CreateTodo$CopyWithImpl(
      CreateTodo$ _value, $Res Function(CreateTodo$) _then)
      : super(_value, (v) => _then(v as CreateTodo$));

  @override
  CreateTodo$ get _value => super._value as CreateTodo$;

  @override
  $Res call({
    Object text = freezed,
    Object result = freezed,
    Object pendingId = freezed,
  }) {
    return _then(CreateTodo$(
      text: text == freezed ? _value.text : text as String,
      result: result == freezed
          ? _value.result
          : result as void Function(AppAction),
      pendingId: pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionStart)

/// @nodoc
class _$CreateTodo$ implements CreateTodo$ {
  const _$CreateTodo$(
      {@required this.text,
      @required this.result,
      this.pendingId = _kCreateTodoPendingId})
      : assert(text != null),
        assert(result != null),
        assert(pendingId != null);

  @override
  final String text;
  @override
  final void Function(AppAction) result;
  @JsonKey(defaultValue: _kCreateTodoPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'CreateTodo.start(text: $text, result: $result, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTodo$ &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $CreateTodo$CopyWith<CreateTodo$> get copyWith =>
      _$CreateTodo$CopyWithImpl<CreateTodo$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(
            String text, void Function(AppAction) result, String pendingId),
    @required Result successful(String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(text, result, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(
        String text, void Function(AppAction) result, String pendingId),
    Result successful(String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(text, result, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(CreateTodo$ value),
    @required Result successful(CreateTodoSuccessful value),
    @required Result error(CreateTodoError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(CreateTodo$ value),
    Result successful(CreateTodoSuccessful value),
    Result error(CreateTodoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class CreateTodo$ implements CreateTodo, ActionStart {
  const factory CreateTodo$(
      {@required String text,
      @required void Function(AppAction) result,
      String pendingId}) = _$CreateTodo$;

  String get text;
  void Function(AppAction) get result;
  @override
  String get pendingId;
  @override
  $CreateTodo$CopyWith<CreateTodo$> get copyWith;
}

/// @nodoc
abstract class $CreateTodoSuccessfulCopyWith<$Res>
    implements $CreateTodoCopyWith<$Res> {
  factory $CreateTodoSuccessfulCopyWith(CreateTodoSuccessful value,
          $Res Function(CreateTodoSuccessful) then) =
      _$CreateTodoSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$CreateTodoSuccessfulCopyWithImpl<$Res>
    extends _$CreateTodoCopyWithImpl<$Res>
    implements $CreateTodoSuccessfulCopyWith<$Res> {
  _$CreateTodoSuccessfulCopyWithImpl(
      CreateTodoSuccessful _value, $Res Function(CreateTodoSuccessful) _then)
      : super(_value, (v) => _then(v as CreateTodoSuccessful));

  @override
  CreateTodoSuccessful get _value => super._value as CreateTodoSuccessful;

  @override
  $Res call({
    Object pendingId = freezed,
  }) {
    return _then(CreateTodoSuccessful(
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)

/// @nodoc
class _$CreateTodoSuccessful implements CreateTodoSuccessful {
  const _$CreateTodoSuccessful([this.pendingId = _kCreateTodoPendingId])
      : assert(pendingId != null);

  @JsonKey(defaultValue: _kCreateTodoPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'CreateTodo.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTodoSuccessful &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pendingId);

  @override
  $CreateTodoSuccessfulCopyWith<CreateTodoSuccessful> get copyWith =>
      _$CreateTodoSuccessfulCopyWithImpl<CreateTodoSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(
            String text, void Function(AppAction) result, String pendingId),
    @required Result successful(String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(
        String text, void Function(AppAction) result, String pendingId),
    Result successful(String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(CreateTodo$ value),
    @required Result successful(CreateTodoSuccessful value),
    @required Result error(CreateTodoError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(CreateTodo$ value),
    Result successful(CreateTodoSuccessful value),
    Result error(CreateTodoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateTodoSuccessful implements CreateTodo, ActionDone {
  const factory CreateTodoSuccessful([String pendingId]) =
      _$CreateTodoSuccessful;

  @override
  String get pendingId;
  @override
  $CreateTodoSuccessfulCopyWith<CreateTodoSuccessful> get copyWith;
}

/// @nodoc
abstract class $CreateTodoErrorCopyWith<$Res>
    implements $CreateTodoCopyWith<$Res> {
  factory $CreateTodoErrorCopyWith(
          CreateTodoError value, $Res Function(CreateTodoError) then) =
      _$CreateTodoErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, String pendingId});
}

/// @nodoc
class _$CreateTodoErrorCopyWithImpl<$Res> extends _$CreateTodoCopyWithImpl<$Res>
    implements $CreateTodoErrorCopyWith<$Res> {
  _$CreateTodoErrorCopyWithImpl(
      CreateTodoError _value, $Res Function(CreateTodoError) _then)
      : super(_value, (v) => _then(v as CreateTodoError));

  @override
  CreateTodoError get _value => super._value as CreateTodoError;

  @override
  $Res call({
    Object error = freezed,
    Object pendingId = freezed,
  }) {
    return _then(CreateTodoError(
      error == freezed ? _value.error : error,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)
@Implements(ErrorAction)

/// @nodoc
class _$CreateTodoError implements CreateTodoError {
  const _$CreateTodoError(this.error, [this.pendingId = _kCreateTodoPendingId])
      : assert(error != null),
        assert(pendingId != null);

  @override
  final Object error;
  @JsonKey(defaultValue: _kCreateTodoPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'CreateTodo.error(error: $error, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTodoError &&
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
  $CreateTodoErrorCopyWith<CreateTodoError> get copyWith =>
      _$CreateTodoErrorCopyWithImpl<CreateTodoError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result start(
            String text, void Function(AppAction) result, String pendingId),
    @required Result successful(String pendingId),
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
    Result start(
        String text, void Function(AppAction) result, String pendingId),
    Result successful(String pendingId),
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
    @required Result start(CreateTodo$ value),
    @required Result successful(CreateTodoSuccessful value),
    @required Result error(CreateTodoError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(CreateTodo$ value),
    Result successful(CreateTodoSuccessful value),
    Result error(CreateTodoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateTodoError implements CreateTodo, ActionDone, ErrorAction {
  const factory CreateTodoError(Object error, [String pendingId]) =
      _$CreateTodoError;

  Object get error;
  @override
  String get pendingId;
  @override
  $CreateTodoErrorCopyWith<CreateTodoError> get copyWith;
}

/// @nodoc
class _$ListenForTodosTearOff {
  const _$ListenForTodosTearOff();

// ignore: unused_element
  ListenForTodosStart start() {
    return const ListenForTodosStart();
  }

// ignore: unused_element
  ListenForTodosDone done() {
    return const ListenForTodosDone();
  }

// ignore: unused_element
  OnTodosEvent event(List<Todo> todos) {
    return OnTodosEvent(
      todos,
    );
  }

// ignore: unused_element
  _ListenForTodosError error(Object error) {
    return _ListenForTodosError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListenForTodos = _$ListenForTodosTearOff();

/// @nodoc
mixin _$ListenForTodos {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result done(),
    @required Result event(List<Todo> todos),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result done(),
    Result event(List<Todo> todos),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(ListenForTodosStart value),
    @required Result done(ListenForTodosDone value),
    @required Result event(OnTodosEvent value),
    @required Result error(_ListenForTodosError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(ListenForTodosStart value),
    Result done(ListenForTodosDone value),
    Result event(OnTodosEvent value),
    Result error(_ListenForTodosError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ListenForTodosCopyWith<$Res> {
  factory $ListenForTodosCopyWith(
          ListenForTodos value, $Res Function(ListenForTodos) then) =
      _$ListenForTodosCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForTodosCopyWithImpl<$Res>
    implements $ListenForTodosCopyWith<$Res> {
  _$ListenForTodosCopyWithImpl(this._value, this._then);

  final ListenForTodos _value;
  // ignore: unused_field
  final $Res Function(ListenForTodos) _then;
}

/// @nodoc
abstract class $ListenForTodosStartCopyWith<$Res> {
  factory $ListenForTodosStartCopyWith(
          ListenForTodosStart value, $Res Function(ListenForTodosStart) then) =
      _$ListenForTodosStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForTodosStartCopyWithImpl<$Res>
    extends _$ListenForTodosCopyWithImpl<$Res>
    implements $ListenForTodosStartCopyWith<$Res> {
  _$ListenForTodosStartCopyWithImpl(
      ListenForTodosStart _value, $Res Function(ListenForTodosStart) _then)
      : super(_value, (v) => _then(v as ListenForTodosStart));

  @override
  ListenForTodosStart get _value => super._value as ListenForTodosStart;
}

/// @nodoc
class _$ListenForTodosStart implements ListenForTodosStart {
  const _$ListenForTodosStart();

  @override
  String toString() {
    return 'ListenForTodos.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListenForTodosStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result done(),
    @required Result event(List<Todo> todos),
    @required Result error(Object error),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return start();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result done(),
    Result event(List<Todo> todos),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(ListenForTodosStart value),
    @required Result done(ListenForTodosDone value),
    @required Result event(OnTodosEvent value),
    @required Result error(_ListenForTodosError value),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(ListenForTodosStart value),
    Result done(ListenForTodosDone value),
    Result event(OnTodosEvent value),
    Result error(_ListenForTodosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class ListenForTodosStart implements ListenForTodos {
  const factory ListenForTodosStart() = _$ListenForTodosStart;
}

/// @nodoc
abstract class $ListenForTodosDoneCopyWith<$Res> {
  factory $ListenForTodosDoneCopyWith(
          ListenForTodosDone value, $Res Function(ListenForTodosDone) then) =
      _$ListenForTodosDoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForTodosDoneCopyWithImpl<$Res>
    extends _$ListenForTodosCopyWithImpl<$Res>
    implements $ListenForTodosDoneCopyWith<$Res> {
  _$ListenForTodosDoneCopyWithImpl(
      ListenForTodosDone _value, $Res Function(ListenForTodosDone) _then)
      : super(_value, (v) => _then(v as ListenForTodosDone));

  @override
  ListenForTodosDone get _value => super._value as ListenForTodosDone;
}

/// @nodoc
class _$ListenForTodosDone implements ListenForTodosDone {
  const _$ListenForTodosDone();

  @override
  String toString() {
    return 'ListenForTodos.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListenForTodosDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result done(),
    @required Result event(List<Todo> todos),
    @required Result error(Object error),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result done(),
    Result event(List<Todo> todos),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(ListenForTodosStart value),
    @required Result done(ListenForTodosDone value),
    @required Result event(OnTodosEvent value),
    @required Result error(_ListenForTodosError value),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(ListenForTodosStart value),
    Result done(ListenForTodosDone value),
    Result event(OnTodosEvent value),
    Result error(_ListenForTodosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ListenForTodosDone implements ListenForTodos {
  const factory ListenForTodosDone() = _$ListenForTodosDone;
}

/// @nodoc
abstract class $OnTodosEventCopyWith<$Res> {
  factory $OnTodosEventCopyWith(
          OnTodosEvent value, $Res Function(OnTodosEvent) then) =
      _$OnTodosEventCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$OnTodosEventCopyWithImpl<$Res>
    extends _$ListenForTodosCopyWithImpl<$Res>
    implements $OnTodosEventCopyWith<$Res> {
  _$OnTodosEventCopyWithImpl(
      OnTodosEvent _value, $Res Function(OnTodosEvent) _then)
      : super(_value, (v) => _then(v as OnTodosEvent));

  @override
  OnTodosEvent get _value => super._value as OnTodosEvent;

  @override
  $Res call({
    Object todos = freezed,
  }) {
    return _then(OnTodosEvent(
      todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

/// @nodoc
class _$OnTodosEvent implements OnTodosEvent {
  const _$OnTodosEvent(this.todos) : assert(todos != null);

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'ListenForTodos.event(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnTodosEvent &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @override
  $OnTodosEventCopyWith<OnTodosEvent> get copyWith =>
      _$OnTodosEventCopyWithImpl<OnTodosEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result done(),
    @required Result event(List<Todo> todos),
    @required Result error(Object error),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return event(todos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result done(),
    Result event(List<Todo> todos),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (event != null) {
      return event(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(ListenForTodosStart value),
    @required Result done(ListenForTodosDone value),
    @required Result event(OnTodosEvent value),
    @required Result error(_ListenForTodosError value),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return event(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(ListenForTodosStart value),
    Result done(ListenForTodosDone value),
    Result event(OnTodosEvent value),
    Result error(_ListenForTodosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class OnTodosEvent implements ListenForTodos {
  const factory OnTodosEvent(List<Todo> todos) = _$OnTodosEvent;

  List<Todo> get todos;
  $OnTodosEventCopyWith<OnTodosEvent> get copyWith;
}

/// @nodoc
abstract class _$ListenForTodosErrorCopyWith<$Res> {
  factory _$ListenForTodosErrorCopyWith(_ListenForTodosError value,
          $Res Function(_ListenForTodosError) then) =
      __$ListenForTodosErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class __$ListenForTodosErrorCopyWithImpl<$Res>
    extends _$ListenForTodosCopyWithImpl<$Res>
    implements _$ListenForTodosErrorCopyWith<$Res> {
  __$ListenForTodosErrorCopyWithImpl(
      _ListenForTodosError _value, $Res Function(_ListenForTodosError) _then)
      : super(_value, (v) => _then(v as _ListenForTodosError));

  @override
  _ListenForTodosError get _value => super._value as _ListenForTodosError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_ListenForTodosError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$_ListenForTodosError implements _ListenForTodosError {
  const _$_ListenForTodosError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ListenForTodos.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListenForTodosError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  _$ListenForTodosErrorCopyWith<_ListenForTodosError> get copyWith =>
      __$ListenForTodosErrorCopyWithImpl<_ListenForTodosError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result done(),
    @required Result event(List<Todo> todos),
    @required Result error(Object error),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result done(),
    Result event(List<Todo> todos),
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
  Result map<Result extends Object>({
    @required Result start(ListenForTodosStart value),
    @required Result done(ListenForTodosDone value),
    @required Result event(OnTodosEvent value),
    @required Result error(_ListenForTodosError value),
  }) {
    assert(start != null);
    assert(done != null);
    assert(event != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(ListenForTodosStart value),
    Result done(ListenForTodosDone value),
    Result event(OnTodosEvent value),
    Result error(_ListenForTodosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ListenForTodosError implements ListenForTodos, ErrorAction {
  const factory _ListenForTodosError(Object error) = _$_ListenForTodosError;

  Object get error;
  _$ListenForTodosErrorCopyWith<_ListenForTodosError> get copyWith;
}
