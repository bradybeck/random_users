# Random Users
[![Pub](https://img.shields.io/pub/v/random_users.svg)](https://pub.dartlang.org/packages/random_users)
[![Build Status](https://travis-ci.org/bradybeck/random_users.svg?branch=master)](https://travis-ci.org/bradybeck/random_users)

## About
Random Users is an offline API and wrapper for mock user profiles retrieved from https://randomuser.me/.

## Usage

```dart
import 'package:random_users/random_users.dart';

// Get the same 3 users every time.
List<RandomUser> users = getUsers(1000);
print('Users: ${users.map((user) => user.toString())}');

// Get 3 users randomly selected from the data source.
List<RandomUser> usersShuffled = getUsers(1000, random: true);
print('Shuffled users: ${usersShuffled.map((user) => user.toString())}');

```

### Data source
The data source used contains 2000 documents and is 2.3 MB in size.

Every document contains the following fields.
- `String` firstName
- `String` lastName
- `String` phoneNumber
- `String` username
- `String` password
- `String` email
- `Gender` gender _(custom enum value)_
- `String` largePicture
- `String` mediumPicture
- `String` thumbNail

### Testing
Run `pub run test`.