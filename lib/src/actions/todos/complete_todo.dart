part of todo_actions;

const String _kCompleteTodoPendingId = 'CompleteTodo';

@freezed
abstract class CompleteTodo with _$CompleteTodo implements AppAction {
  @Implements(ActionStart)
  const factory CompleteTodo.start({
    @required Todo todo,
    @required ActionResult result,
    @Default(_kCompleteTodoPendingId) String pendingId,
  }) = CompleteTodo$;

  @Implements(ActionDone)
  const factory CompleteTodo.successful([
    @Default(_kCompleteTodoPendingId) String pendingId,
  ]) = CompleteTodoSuccessful;

  @Implements(ActionDone)
  @Implements(ErrorAction)
  const factory CompleteTodo.error(
    Object error, [
    @Default(_kCompleteTodoPendingId) String pendingId,
  ]) = CompleteTodoError;

  static String get pendingKey => _kCompleteTodoPendingId;
}
