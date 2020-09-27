part of todo_models;

abstract class Todo implements Built<Todo, TodoBuilder>, Comparable<Todo> {
  factory Todo([void Function(TodoBuilder b) updates]) = _$Todo;
  factory Todo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Todo._();

  String get id;

  String get uid;

  String get text;

  bool get status;

  DateTime get createdAt;

  @override
  int compareTo(Todo other) {
    return other.createdAt.compareTo(createdAt);
  }

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Todo> get serializer => _$todoSerializer;
}
