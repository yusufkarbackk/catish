part of 'Models.dart';

class CatishTransaction {
  late final String id;
  late final String name;
  late final String catName;
  late final String email;
  late final int price;
  late final String image;
  late final int time;

  CatishTransaction(
      {required this.id,
      required this.name,
      required this.catName,
      required this.email,
      required this.price,
      required this.image,
      required this.time});
}
