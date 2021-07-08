part of 'Models.dart';

class CatishUser extends ChangeNotifier {
  late final String? id;
  late final String name;
  late final String email;
  late final int? phone;

  CatishUser(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone});
}
