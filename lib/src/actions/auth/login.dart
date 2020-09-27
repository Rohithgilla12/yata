part of auth_actions;

const String _kLoginPendingId = 'Login';

@freezed
abstract class Login with _$Login implements AppAction {
  @Implements(ActionStart)
  const factory Login.start({
    @required String email,
    @required String password,
    @required ActionResult result,
    @Default(_kLoginPendingId) String pendingId,
  }) = Login$;

  @Implements(ActionDone)
  const factory Login.successful(
    AppUser user, [
    @Default(_kLoginPendingId) String pendingId,
  ]) = LoginSuccessful;

  @Implements(ActionDone)
  @Implements(ErrorAction)
  const factory Login.error(
    Object error, [
    @Default(_kLoginPendingId) String pendingId,
  ]) = LoginError;

  static String get pendingKey => _kLoginPendingId;
}
