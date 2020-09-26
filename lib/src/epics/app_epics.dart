import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/data/auth_api.dart';
import 'package:yatp/src/epics/auth_epic.dart';
import 'package:yatp/src/models/index.dart';

class AppEpics {
  const AppEpics({
    @required AuthApi authApi,
  })  : assert(authApi != null),
        _authApi = authApi;

  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      AuthEpic(authApi: _authApi).epics,
      TypedEpic<AppState, InitializeApp$>(_initializeApp),
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeApp$ action) => _authApi
            .currentUser()
            .expand((AppUser user) => <AppAction>[
                  InitializeApp.successful(user),
                  if (user != null) ...<AppAction>[
                    //todo: Fetch for todos in future
                  ]
                ])
            .onErrorReturnWith((dynamic error) => InitializeApp.error(error)));
  }
}
