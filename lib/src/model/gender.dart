import 'package:meta/meta.dart';

import 'enum.dart';

class Gender extends Enum<String> {
  const Gender(String value) : super(value);

  static const Gender male = const Gender("male");
  static const Gender female = const Gender("female");
  static const Gender other = const Gender("other");

  static List<Gender> get values => [male, female, other];

  factory Gender.fromValue(String value, {Gender fallback = Gender.other}) {
    return values.firstWhere(
      (gender) => gender.value == value,
      orElse: () => fallback,
    );
  }

  @override
  bool operator ==(o) => o is Gender && o.value == this.value;

  @override
  String toString() {
    return "${super.toString()} (value: ${this.value})";
  }
}
