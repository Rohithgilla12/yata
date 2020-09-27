part of todo_actions;

@freezed
abstract class ListenForTodos with _$ListenForTodos implements AppAction {
  const factory ListenForTodos.start() = ListenForTodosStart;

  const factory ListenForTodos.done() = ListenForTodosDone;

  const factory ListenForTodos.event(List<Todo> todos) = OnTodosEvent;

  @Implements(ErrorAction)
  const factory ListenForTodos.error(Object error) = _ListenForTodosError;
}
