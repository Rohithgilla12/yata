import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/data/auth_api.dart';
import 'package:yatp/src/models/index.dart';

class AuthEpic {
  const AuthEpic({@required AuthApi authApi})
      : assert(authApi != null),
        _authApi = authApi;

  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, SignUp$>(_signUp),
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, UpdateUserDetails$>(_updateUserDetails),
      TypedEpic<AppState, Logout$>(_logout),
    ]);
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Login$ action) => _authApi
            .signIn(
              email: action.email,
              password: action.password,
            )
            .asStream()
            .map<AppAction>((AppUser user) => Login.successful(user))
            .onErrorReturnWith((dynamic error) => Login.error(error)));
  }

  Stream<AppAction> _updateUserDetails(Stream<UpdateUserDetails$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateUserDetails$ action) => _authApi
            .setUserDetails(action.user)
            .asStream()
            .mapTo<AppAction>(const UpdateUserDetails.successful())
            .onErrorReturnWith((dynamic error) => UpdateUserDetails.error(error)));
  }

  Stream<AppAction> _signUp(Stream<SignUp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignUp$ action) => _authApi
            .signUpWithEmail(
              email: action.email,
              password: action.password,
              firstName: action.firstName,
              lastName: action.lastName,
            )
            .asStream()
            .map<AppAction>((AppUser user) => SignUp.successful(user))
            .onErrorReturnWith((dynamic error) => SignUp.error(error)));
  }

  Stream<AppAction> _logout(Stream<Logout$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Logout$ action) => _authApi
            .logout()
            .asStream()
            .mapTo<AppAction>(const Logout.successful())
            .onErrorReturnWith((dynamic error) => Logout.error(error)));
  }
}
