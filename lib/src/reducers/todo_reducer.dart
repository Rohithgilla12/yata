import 'package:redux/redux.dart';
import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/models/index.dart';

Reducer<TodoState> todoReducers = combineReducers<TodoState>(<Reducer<TodoState>>[
  TypedReducer<TodoState, OnTodosEvent>(_onTodosEvent),
]);

TodoState _onTodosEvent(TodoState state, OnTodosEvent action) {
  return state.rebuild((TodoStateBuilder b) {
    for (Todo item in action.todos) {
      b.todos[item.id] = item;
    }
  });
}
