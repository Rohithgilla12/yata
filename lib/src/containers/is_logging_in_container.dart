import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/models/index.dart';

class IsLoggingInContainer extends StatelessWidget {
  const IsLoggingInContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) => store.state.pendingActions.contains(Login.pendingKey),
      builder: builder,
    );
  }
}
