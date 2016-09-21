import 'dart:convert';

import './big_user_list.dart';

Map _randomUserData;

/// Class that holds data from `randomuser.me`.
class RandomUser {
  String firstName;
  String lastName;
  String phoneNumber;
  String userName;
  String password;
  String email;
  String gender;
  String largePicture;
  String mediumPicture;
  String thumbNail;

  RandomUser.fromJson(json) {
    firstName = json['name']['first'];
    lastName = json['name']['last'];
    phoneNumber = json['phone'];
    gender = json['gender'];
    userName = json['login']['username'];
    password = json['login']['password'];
    email = json['email'];
    largePicture = json['picture']['large'];
    mediumPicture = json['picture']['medium'];
    thumbNail = json['picture']['thumbnail'];
  }
}

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
