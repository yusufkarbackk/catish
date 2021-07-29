part of 'Models.dart';

class Cat {
  late final String image;
  late final int price;
  late final String race;
  late final String sex;
  late final String id;
  late final int age;
  late final String desc;

  Cat(
      {required this.image,
      required this.race,
      required this.price,
      required this.sex,
      required this.id,
      required this.age,
      required this.desc});

  factory Cat.fromJson(Map<String, dynamic> json) {
    var random = Random();

    String getSex() {
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
        price: random.nextInt((randomPrice)).ceil(),
        sex: getSex(),
        id: json['id'],
        age: random.nextInt(46) + 3,
        race: json['name'],
        desc: json['description']
        );
  }
}
