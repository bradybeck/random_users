import 'package:random_users/src/model/gender.dart';

/// The RandomUser model that represents the data in the format of `randomuser.me`.
class RandomUser {
  String firstName;
  String lastName;
  String phoneNumber;
  String username;
  String password;
  String email;
  Gender gender;
  String largePicture;
  String mediumPicture;
  String thumbnail;

  RandomUser();
  RandomUser.fromMap(json) {
    firstName = json['name']['first'];
    lastName = json['name']['last'];
    phoneNumber = json['phone'];
    gender = Gender.fromValue(json['gender']);
    username = json['login']['username'];
    password = json['login']['password'];
    email = json['email'];
    largePicture = json['picture']['large'];
    mediumPicture = json['picture']['medium'];
    thumbnail = json['picture']['thumbnail'];
  }
}
