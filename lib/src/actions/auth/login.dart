part of auth_actions;

@freezed
abstract class Login with _$Login implements AppAction {
  const factory Login({
    @required String email,
    @required String password,
  }) = Login$;

  @Implements(UserAction)
  const factory Login.successful(AppUser user) = LoginSuccessful;

  @Implements(ErrorAction)
  const factory Login.error(Object error) = LoginError;
}
