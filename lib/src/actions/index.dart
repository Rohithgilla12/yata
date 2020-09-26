library actions;

import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yatp/src/models/index.dart';

export 'auth/index.dart';

part 'index.freezed.dart';

typedef ActionResult = void Function(AppAction action);

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;
}

abstract class PendingAction extends AppAction {
  String get pendingId;
}

abstract class UserAction extends AppAction {
  AppUser get user;
}

abstract class ActionStart extends PendingAction {}

abstract class ActionDone extends PendingAction {}

@freezed
abstract class InitializeApp with _$InitializeApp implements AppAction {
  const factory InitializeApp() = InitializeApp$;

  const factory InitializeApp.successful(@nullable AppUser user) = InitializeAppSuccessful;

  @Implements(ErrorAction)
  const factory InitializeApp.error(Object error) = InitializeAppError;
}

@freezed
abstract class SetWallpaper with _$SetWallpaper implements AppAction {
  const factory SetWallpaper(ByteData byteData) = SetWallpaper$;

  const factory SetWallpaper.successful(String result) = SetWallpaperSuccessful;

  @Implements(ErrorAction)
  const factory SetWallpaper.error(Object error) = SetWallpaperError;
}
