import 'package:json_annotation/json_annotation.dart';
import '/model/login_result.dart';
import '/model/place.dart';
import '/model/user.dart';

bool typeEqual<S, T>() => S == T;

bool typeEqualn<S, T>() {
  return typeEqual<S, T>() || typeEqual<S?, T?>();
}

class Converter<T> implements JsonConverter<T, Object> {
  const Converter();

  @override
  T fromJson(Object? json) {
    json = json as Map<String, dynamic>;
    if (typeEqualn<T, User>()) {
      return User.fromJson(json) as T;
    } else if (typeEqualn<T, Place>()) {
      return Place.fromJson(json) as T;
    } else if (typeEqualn<T, LoginResult>()) {
      return LoginResult.fromJson(json) as T;
    }
    throw UnimplementedError('`$T` fromJson factory unimplemented.');
  }

  @override
  Map<String, dynamic> toJson(T obj) {
    if (typeEqualn<T, User>()) {
      return (obj as User).toJson();
    } else if (typeEqualn<T, Place>()) {
      return (obj as Place).toJson();
    } else if (typeEqualn<T, LoginResult>()) {
      return (obj as LoginResult).toJson();
    }

    throw UnimplementedError('`$T` toJson factory unimplemented.');
  }
}
