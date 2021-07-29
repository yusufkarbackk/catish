part of 'Models.dart';

class CatishUser extends ChangeNotifier {
  late final String? id;
  late final String name;
  late final String email;
  late final int? phone;

  CatishUser({this.id = '', this.name = '', this.email = '', this.phone = 0});
}
