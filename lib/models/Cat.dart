part of 'Models.dart';

class Cat {
  late final String image;
  late final int price;
  late final String race;
  late final String sex;
  late final String id;
  late final int age;

  Cat(
      {required this.image,
      required this.race,
      required this.price,
      required this.sex,
      required this.id,
      required this.age});

  factory Cat.fromJson(Map<String, dynamic> json) {
    var random = Random();

    String getSex() {
      var random = Random();
      int randomSex = random.nextInt(2);

      switch (randomSex) {
        case 0:
          return 'Male';

        default:
          return 'female';
      }
    }

    int randomPrice = random.nextInt(3000001) + 500000;
    return Cat(
        image: json['image']['url'],
        price: random.nextInt((randomPrice)),
        sex: getSex(),
        id: json['id'],
        age: random.nextInt(46) + 3,
        race: json['name']);
  }
}
