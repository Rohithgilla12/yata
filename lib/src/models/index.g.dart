// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'auth',
      serializers.serialize(object.auth,
          specifiedType: const FullType(AuthState)),
      'todo',
      serializers.serialize(object.todo,
          specifiedType: const FullType(TodoState)),
      'pendingActions',
      serializers.serialize(object.pendingActions,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'auth':
          result.auth.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState)) as AuthState);
          break;
        case 'todo':
          result.todo.replace(serializers.deserialize(value,
              specifiedType: const FullType(TodoState)) as TodoState);
          break;
        case 'pendingActions':
          result.pendingActions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(String)]))
              as BuiltSet<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AuthState auth;
  @override
  final TodoState todo;
  @override
  final BuiltSet<String> pendingActions;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.auth, this.todo, this.pendingActions}) : super._() {
    if (auth == null) {
      throw new BuiltValueNullFieldError('AppState', 'auth');
    }
    if (todo == null) {
      throw new BuiltValueNullFieldError('AppState', 'todo');
    }
    if (pendingActions == null) {
      throw new BuiltValueNullFieldError('AppState', 'pendingActions');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        auth == other.auth &&
        todo == other.todo &&
        pendingActions == other.pendingActions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, auth.hashCode), todo.hashCode), pendingActions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('auth', auth)
          ..add('todo', todo)
          ..add('pendingActions', pendingActions))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  AuthStateBuilder _auth;
  AuthStateBuilder get auth => _$this._auth ??= new AuthStateBuilder();
  set auth(AuthStateBuilder auth) => _$this._auth = auth;

  TodoStateBuilder _todo;
  TodoStateBuilder get todo => _$this._todo ??= new TodoStateBuilder();
  set todo(TodoStateBuilder todo) => _$this._todo = todo;

  SetBuilder<String> _pendingActions;
  SetBuilder<String> get pendingActions =>
      _$this._pendingActions ??= new SetBuilder<String>();
  set pendingActions(SetBuilder<String> pendingActions) =>
      _$this._pendingActions = pendingActions;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _auth = _$v.auth?.toBuilder();
      _todo = _$v.todo?.toBuilder();
      _pendingActions = _$v.pendingActions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              auth: auth.build(),
              todo: todo.build(),
              pendingActions: pendingActions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'auth';
        auth.build();
        _$failedField = 'todo';
        todo.build();
        _$failedField = 'pendingActions';
        pendingActions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
