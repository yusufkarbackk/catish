part of 'Widgets.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 70,
        child: FutureBuilder(
            future: CatProvider.getCatBreeds(),
            builder: (context, snapshots) {
              if (snapshots.hasData) {
                List<Cat> data = snapshots.data! as List<Cat>;

                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Container(
                          decoration: BoxDecoration(color: kBaige),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 100,
                          height: 40,
                          child: Center(
                            child: Text(
                              data[index].race,
                              textAlign: TextAlign.center,
                            ),
                          ));
                    });
              } else {
                return SpinKitFadingCircle(
                  size: 50,
                  color: kDarkBrown,
                );
              }
            }));
  }
}
