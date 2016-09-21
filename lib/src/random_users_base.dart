import 'dart:convert';

import 'package:random_users/src/big_user_list.dart';
import 'package:random_users/src/random_user.dart';

Map _randomUserData;

/// Predicable return value for users.
List<RandomUser> getUsers(int count) {
  _randomUserData =
      _randomUserData != null ? _randomUserData : JSON.decode(big_user_list);
  List jsonUsers = _randomUserData['results'];
  return jsonUsers
      .sublist(0, count)
      .map((jsonUser) => new RandomUser.fromJson(jsonUser))
      .toList();
}
