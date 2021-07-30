part of 'Widgets.dart';

class FavouritesWidget extends StatelessWidget {
  const FavouritesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Cat>>(
        future: CatProvider.getCatBreeds(),
        builder: (context, snapshots) {
          if (snapshots.hasData) {
            List<Cat> data = snapshots.data!;
            return Column(
              children: data.map((e) {
                return GestureDetector(
                  onTap: () {
                    Cat cat = Cat(
                        image: e.image,
                        race: e.race,
                        price: e.price,
                        sex: e.sex,
                        id: e.id,
                        age: e.age,
                        desc: e.desc);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(cat: cat)));
                  },
                  child: Container(
                    height: 150,
                    child: Card(
                        color: kBaige,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              padding: EdgeInsets.only(left: 14),
                              child: Image.network(
                                e.image,
                                fit: BoxFit.fill,
                              ),
                              width: 80,
                              height: 80,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(e.race,
                                        style: kSeccondText.copyWith(
                                            fontSize: 18)),
                                    Text('${e.sex} - ${e.age} months',
                                        style:
                                            kMainText.copyWith(fontSize: 12)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      e.desc,
                                      style: kMainText.copyWith(fontSize: 12),
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                );
              }).toList(),
            );
          } else {
            return SpinKitFadingCircle(
              color: kDarkBrown,
              size: 50,
            );
          }
        });
  }
}
