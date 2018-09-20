import 'package:random_users/random_users.dart';
import 'package:test/test.dart';

void main() {
  group('Test the list of users', () {
    const userListLength = 10;
    test('Get users list (length: ${userListLength.toString()}).', () {
      List<RandomUser> users = getUsers(userListLength);
      expect(users.length, userListLength);
    });

    test('Get single user (\'nino\').', () {
      RandomUser user = getUsers(1).first;
      expect(user.firstName, 'nino');
      expect(user.lastName, 'lopez');
      expect(user.email, 'nino.lopez@example.com');
      expect(user.gender, Gender.male);
      expect(user.username, 'goldenpanda522');
      expect(user.password, '2468');
      expect(user.phoneNumber, '01-20-07-62-60');
      expect(
          user.largePicture, 'https://randomuser.me/api/portraits/men/51.jpg');
      expect(user.mediumPicture,
          'https://randomuser.me/api/portraits/med/men/51.jpg');
      expect(user.thumbnail,
          'https://randomuser.me/api/portraits/thumb/men/51.jpg');
    });
  });
}
