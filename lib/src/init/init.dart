import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/data/auth_api.dart';
import 'package:yatp/src/data/storage_api.dart';
import 'package:yatp/src/data/todo_api.dart';
import 'package:yatp/src/epics/app_epics.dart';
import 'package:yatp/src/models/index.dart';
import 'package:yatp/src/reducers/reducer.dart';

Future<Store<AppState>> init() async {
  await Firebase.initializeApp();

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  final FirebaseFirestore firebaseInstance = FirebaseFirestore.instance;
  final AuthApi authApi = AuthApi(
    firebaseAuth: FirebaseAuth.instance,
    firebaseFirestore: firebaseInstance,
  );

  final TodoApi todoApi = TodoApi(store: firebaseInstance);

  final AppEpics appEpics = AppEpics(
    authApi: authApi,
    storageApi: StorageApi(),
    todoApi: todoApi,
  );

  return Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epics),
    ],
  )..dispatch(const InitializeApp());
}

mixin InitMixin<S extends StatefulWidget> on State<S> {
  final Completer<Store<AppState>> _completer = Completer<Store<AppState>>();

  @override
  void initState() {
    super.initState();

    init().then(_completer.complete).catchError(_completer.completeError);
  }

  Future<Store<AppState>> get initFuture => _completer.future;
}
