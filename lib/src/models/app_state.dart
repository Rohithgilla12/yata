part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder b) updates]) = _$AppState;
  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  AppState._();

  AuthState get auth;

  BuiltSet<String> get pendingActions;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
