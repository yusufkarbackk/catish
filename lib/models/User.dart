part of 'Models.dart';

class User {
  late final String id;
  late final String name;
  late final String email;
  late final String phone;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone});
}
