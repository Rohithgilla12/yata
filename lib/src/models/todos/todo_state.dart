part of todo_models;

abstract class TodoState implements Built<TodoState, TodoStateBuilder> {
  factory TodoState([void Function(TodoStateBuilder b) updates]) = _$TodoState;
  factory TodoState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  TodoState._();

  BuiltMap<String, Todo> get todos;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<TodoState> get serializer => _$todoStateSerializer;
}
