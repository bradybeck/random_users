import 'dart:convert';

import 'package:random_users/src/data/big_user_list.dart';
import 'package:random_users/src/model/random_user.dart';

/// The data source containing the mock user documents.
Map _randomUserData;

/// Gets a list of users from the offline data source.
///
/// If `random` is `true`, a copy of the data source will be shuffled.
/// If the `amount` request is bigger than the size of the data source,
/// all users will be returned instead.
/// An `amount` value lower than `0` is not allowed.
List<RandomUser> getUsers(int amount, {bool random = false}) {
  assert(amount >= 0, "An amount value lower than 0 is not allowed.");
  if (amount == 0) return [];

  _randomUserData ??= jsonDecode(big_user_list);

  List jsonUsers = _randomUserData['results'];
  print(jsonUsers.length);

  if (random) jsonUsers.shuffle();
  if (amount > jsonUsers.length) amount = jsonUsers.length;

  return jsonUsers
      .sublist(0, amount)
      .map((jsonUser) => new RandomUser.fromMap(jsonUser))
      .toList();
}

/// Gets a single user.
RandomUser getUser({bool random = false}) {
  return getUsers(1).first;
}
