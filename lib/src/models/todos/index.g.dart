// GENERATED CODE - DO NOT MODIFY BY HAND

part of todo_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Todo> _$todoSerializer = new _$TodoSerializer();
Serializer<TodoState> _$todoStateSerializer = new _$TodoStateSerializer();

class _$TodoSerializer implements StructuredSerializer<Todo> {
  @override
  final Iterable<Type> types = const [Todo, _$Todo];
  @override
  final String wireName = 'Todo';

  @override
  Iterable<Object> serialize(Serializers serializers, Todo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  Todo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$TodoStateSerializer implements StructuredSerializer<TodoState> {
  @override
  final Iterable<Type> types = const [TodoState, _$TodoState];
  @override
  final String wireName = 'TodoState';

  @override
  Iterable<Object> serialize(Serializers serializers, TodoState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'todos',
      serializers.serialize(object.todos,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(String), const FullType(Todo)])),
    ];

    return result;
  }

  @override
  TodoState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodoStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'todos':
          result.todos.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Todo)])));
          break;
      }
    }

    return result.build();
  }
}

class _$Todo extends Todo {
  @override
  final String id;
  @override
  final String uid;
  @override
  final String text;
  @override
  final bool status;
  @override
  final DateTime createdAt;

  factory _$Todo([void Function(TodoBuilder) updates]) =>
      (new TodoBuilder()..update(updates)).build();

  _$Todo._({this.id, this.uid, this.text, this.status, this.createdAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Todo', 'id');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('Todo', 'uid');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('Todo', 'text');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('Todo', 'status');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Todo', 'createdAt');
    }
  }

  @override
  Todo rebuild(void Function(TodoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoBuilder toBuilder() => new TodoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Todo &&
        id == other.id &&
        uid == other.uid &&
        text == other.text &&
        status == other.status &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), uid.hashCode), text.hashCode),
            status.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Todo')
          ..add('id', id)
          ..add('uid', uid)
          ..add('text', text)
          ..add('status', status)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class TodoBuilder implements Builder<Todo, TodoBuilder> {
  _$Todo _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  bool _status;
  bool get status => _$this._status;
  set status(bool status) => _$this._status = status;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  TodoBuilder();

  TodoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _uid = _$v.uid;
      _text = _$v.text;
      _status = _$v.status;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Todo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Todo;
  }

  @override
  void update(void Function(TodoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Todo build() {
    final _$result = _$v ??
        new _$Todo._(
            id: id, uid: uid, text: text, status: status, createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

class _$TodoState extends TodoState {
  @override
  final BuiltMap<String, Todo> todos;

  factory _$TodoState([void Function(TodoStateBuilder) updates]) =>
      (new TodoStateBuilder()..update(updates)).build();

  _$TodoState._({this.todos}) : super._() {
    if (todos == null) {
      throw new BuiltValueNullFieldError('TodoState', 'todos');
    }
  }

  @override
  TodoState rebuild(void Function(TodoStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoStateBuilder toBuilder() => new TodoStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoState && todos == other.todos;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoState')..add('todos', todos))
        .toString();
  }
}

class TodoStateBuilder implements Builder<TodoState, TodoStateBuilder> {
  _$TodoState _$v;

  MapBuilder<String, Todo> _todos;
  MapBuilder<String, Todo> get todos =>
      _$this._todos ??= new MapBuilder<String, Todo>();
  set todos(MapBuilder<String, Todo> todos) => _$this._todos = todos;

  TodoStateBuilder();

  TodoStateBuilder get _$this {
    if (_$v != null) {
      _todos = _$v.todos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TodoState;
  }

  @override
  void update(void Function(TodoStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoState build() {
    _$TodoState _$result;
    try {
      _$result = _$v ?? new _$TodoState._(todos: todos.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TodoState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
