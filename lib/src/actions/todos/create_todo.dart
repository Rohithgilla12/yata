part of todo_actions;

const String _kCreateTodoPendingId = 'CreateTodo';

@freezed
abstract class CreateTodo with _$CreateTodo implements AppAction {
  @Implements(ActionStart)
  const factory CreateTodo.start({
    @required String text,
    @required ActionResult result,
    @Default(_kCreateTodoPendingId) String pendingId,
  }) = CreateTodo$;

  @Implements(ActionDone)
  const factory CreateTodo.successful([
    @Default(_kCreateTodoPendingId) String pendingId,
  ]) = CreateTodoSuccessful;

  @Implements(ActionDone)
  @Implements(ErrorAction)
  const factory CreateTodo.error(
    Object error, [
    @Default(_kCreateTodoPendingId) String pendingId,
  ]) = CreateTodoError;

  static String get pendingKey => _kCreateTodoPendingId;
}
