import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/data/auth_api.dart';
import 'package:yatp/src/data/storage_api.dart';
import 'package:yatp/src/data/todo_api.dart';
import 'package:yatp/src/epics/auth_epic.dart';
import 'package:yatp/src/epics/todo_epic.dart';
import 'package:yatp/src/models/index.dart';

class AppEpics {
  const AppEpics({
    @required AuthApi authApi,
    @required StorageApi storageApi,
    @required TodoApi todoApi,
  })  : assert(authApi != null),
        assert(storageApi != null),
        assert(todoApi != null),
        _storageApi = storageApi,
        _todoApi = todoApi,
        _authApi = authApi;

  final AuthApi _authApi;
  final StorageApi _storageApi;
  final TodoApi _todoApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      AuthEpic(authApi: _authApi).epics,
      TodoEpic(todoApi: _todoApi).epics,
      TypedEpic<AppState, InitializeApp$>(_initializeApp),
      TypedEpic<AppState, SetWallpaper$>(_setWallpaper),
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

  Stream<AppAction> _setWallpaper(Stream<SetWallpaper$> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((SetWallpaper$ action) => _storageApi.getAndSetWallPaper(action.byteData))
        .map((String result) => SetWallpaper.successful(result))
        .onErrorReturnWith((dynamic error) => SetWallpaper.error(error));
  }
}
