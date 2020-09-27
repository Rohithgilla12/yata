library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:yatp/src/models/index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppUser,
  AppState,
  AuthState,
  TodoState,
  Todo,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..add(DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();

class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  final bool structured = false;
  @override
  final Iterable<Type> types = <Type>[DateTime];
  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(Serializers serializers, DateTime dateTime, {FullType specifiedType = FullType.unspecified}) {
    if (!dateTime.isUtc) {
      return dateTime.toUtc().microsecondsSinceEpoch;
    } else {
      return dateTime.microsecondsSinceEpoch;
    }
  }

  @override
  DateTime deserialize(Serializers serializers, Object serialized, {FullType specifiedType = FullType.unspecified}) {
    if (serialized is String) {
      return DateTime.parse(serialized);
    } else {
      return DateTime.fromMicrosecondsSinceEpoch(serialized, isUtc: true).toLocal();
    }
  }
}
