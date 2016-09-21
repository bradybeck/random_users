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
