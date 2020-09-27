import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yatp/src/models/index.dart';

class TodosContainer extends StatelessWidget {
  const TodosContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Todo>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Todo>>(
      converter: (Store<AppState> store) => store.state.todo.todos?.toMap()?.values?.toList(),
      builder: builder,
    );
  }
}
