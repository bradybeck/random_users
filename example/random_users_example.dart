import 'package:random_users/random_users.dart';

main() {
  List<RandomUser> users = getUsers(1000);
  print('Users: ${users.map((user) => user.firstName)}');
}
