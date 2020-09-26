part of auth_actions;

@freezed
abstract class UpdateUserDetails with _$UpdateUserDetails implements AppAction {
  const factory UpdateUserDetails(AppUser user) = UpdateUserDetails$;

  const factory UpdateUserDetails.successful() = UpdateUserDetailsSuccessful;

  @Implements(ErrorAction)
  const factory UpdateUserDetails.error(Object error) = UpdateUserDetailsError;
}
