import 'package:flutter/cupertino.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/data/todo_api.dart';
import 'package:yatp/src/models/index.dart';

class TodoEpic {
  const TodoEpic({
    @required TodoApi todoApi,
  })  : assert(todoApi != null),
        _todoApi = todoApi;

  final TodoApi _todoApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateTodo$>(_createTodo),
      TypedEpic<AppState, CompleteTodo$>(_completeTodo),
      _listenForTodos,
    ]);
  }

  Stream<AppAction> _listenForTodos(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForTodosStart>()
        .flatMap((ListenForTodosStart action) => _todoApi
            .listenForTodos(store.state.auth.user.uid)
            .expand<AppAction>((List<Todo> todos) => <AppAction>[
                  ListenForTodos.event(todos),
                ])
            .takeUntil(actions.whereType<ListenForTodosDone>())
            .onErrorReturnWith((dynamic error) => ListenForTodos.error(error)));
  }

  Stream<AppAction> _createTodo(Stream<CreateTodo$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateTodo$ action) => _todoApi
            .createTodo(text: action.text, uid: store.state.auth.user.uid)
            .asStream()
            .expand<AppAction>((_) => <AppAction>[
                  const CreateTodo.successful(),
                ])
            .onErrorReturnWith((dynamic error) => CreateTodo.error(error))
            .doOnData(action.result));
  }

  Stream<AppAction> _completeTodo(Stream<CompleteTodo$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CompleteTodo$ action) => _todoApi
            .completeTodo(action.todo)
            .asStream()
            .mapTo(const CompleteTodo.successful())
            .onErrorReturnWith((dynamic error) => CompleteTodo.error(error))
            .doOnData(action.result));
  }
}
