# Random Users [![Build Status](https://travis-ci.org/bradybeck/random_users.svg?branch=master)](https://travis-ci.org/bradybeck/random_users)

Just a static list of Random Users to be used for for all things pulled from `https://randomuser.me/`.

## Usage

```dart
import 'package:random_users/random_users.dart';

// get the same 1000 users every time.
List<RandomUser> users = getUsers(1000);
print('Users: ${users.map((user) => user.firstName)}');
```

#### User data currently includes:
- firstName
- lastName
- phoneNumber
- userName
- password
- email
- gender
- largePicture
- mediumPicture
- thumbNail

## Development

Random Users leverages the [dart_dev](https://github.com/Workiva/dart_dev) package for most of its
tooling needs, including static analysis, code formatting, running tests, collecting coverage,
and serving examples. Check out the dart_dev readme for more information.

#### Testing - `pub run dart_dev test`

#### Formatting - `pub run dart_dev format`
