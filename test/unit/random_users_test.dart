import 'package:random_users/random_users.dart';
import 'package:test/test.dart';

void main() {
  group('Test the list of users', () {
    test('should return a list', () {
      List users = getUsers(10);
      expect(users.length, 10);
    });

    test('should return the same user everytime', () {
      RandomUser user = getUsers(1).first;
      expect(user.firstName, 'nino');
      expect(user.lastName, 'lopez');
      expect(user.email, 'nino.lopez@example.com');
      expect(user.userName, 'goldenpanda522');
      expect(user.password, '2468');
      expect(user.phoneNumber, '01-20-07-62-60');
      expect(
          user.largePicture, 'https://randomuser.me/api/portraits/men/51.jpg');
      expect(user.mediumPicture,
          'https://randomuser.me/api/portraits/med/men/51.jpg');
      expect(user.thumbNail,
          'https://randomuser.me/api/portraits/thumb/men/51.jpg');
    });

    test('should return the same user everytime', () {
      RandomUser user = getUsers(1000).last;
      expect(user.firstName, 'felix');
      expect(user.lastName, 'ma');
      expect(user.email, 'felix.ma@example.com');
      expect(user.userName, 'brownkoala970');
      expect(user.password, 'morris');
      expect(user.phoneNumber, '121-084-2228');
      expect(
          user.largePicture, 'https://randomuser.me/api/portraits/men/72.jpg');
      expect(user.mediumPicture,
          'https://randomuser.me/api/portraits/med/men/72.jpg');
      expect(user.thumbNail,
          'https://randomuser.me/api/portraits/thumb/men/72.jpg');
    });
  });
}
