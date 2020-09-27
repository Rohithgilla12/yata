part of auth_actions;

const String _kSignUpPendingId = 'SignUp';

@freezed
abstract class SignUp with _$SignUp implements AppAction {
  @Implements(ActionStart)
  const factory SignUp.start({
    @required String email,
    @required String password,
    @required String firstName,
    @required String lastName,
    @required ActionResult result,
    @Default(_kSignUpPendingId) String pendingId,
  }) = SignUp$;

  @Implements(ActionDone)
  const factory SignUp.successful(
    AppUser user, [
    @Default(_kSignUpPendingId) String pendingId,
  ]) = SignUpSuccessful;

  @Implements(ActionDone)
  @Implements(ErrorAction)
  const factory SignUp.error(
    Object error, [
    @Default(_kSignUpPendingId) String pendingId,
  ]) = SignUpError;

  static String get pendingKey => _kSignUpPendingId;
}
