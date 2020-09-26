import 'package:redux/redux.dart';
import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/models/index.dart';

Reducer<AuthState> authReducer = combineReducers<AuthState>(<Reducer<AuthState>>[
  TypedReducer<AuthState, UserAction>(_userAction),
]);

AuthState _userAction(AuthState state, UserAction action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}
