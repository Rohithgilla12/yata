import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/models/index.dart';
import 'package:yatp/src/reducers/auth_reducer.dart';
import 'package:yatp/src/reducers/pending_actions_reducers.dart';
import 'package:yatp/src/reducers/todo_reducer.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is ErrorAction) {
    final dynamic error = action.error;
    try {
      print('error: $error');
      print('stackTrace: ${error.stackTrace}');
    } catch (_) {}
  }
  print(action);

  if (action is Logout) {
    return AppState();
  }

  return state.rebuild((AppStateBuilder b) {
    b
      ..auth = authReducer(state.auth, action).toBuilder()
      ..todo = todoReducers(state.todo, action).toBuilder()
      ..pendingActions = pendingActions(state.pendingActions, action).toBuilder();
  });
}
