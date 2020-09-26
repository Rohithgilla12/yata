part of auth_actions;

@freezed
abstract class SignUp with _$SignUp implements AppAction {
  const factory SignUp({
    @required String email,
    @required String password,
  }) = SignUp$;

  @Implements(UserAction)
  const factory SignUp.successful(AppUser user) = SignUpSuccessful;

  @Implements(ErrorAction)
  const factory SignUp.error(Object error) = SignUpError;
}
