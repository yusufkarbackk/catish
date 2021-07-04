part of 'Models.dart';

class Cat {
  late final String image;
  late final int price;
  late final String race;

  Cat({required this.image, required this.race, required this.price});

  factory Cat.fromJson(Map<String, dynamic> json) {
    var random = Random();

    int randomPrice = random.nextInt(3000010) + 500000;
    return Cat(
        image: json['image']['url'],
        price: random.nextInt((randomPrice)),
        race: json['name']);
  }
}
