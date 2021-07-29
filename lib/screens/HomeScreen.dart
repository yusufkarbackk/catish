part of 'Screens.dart';

class HomeScreen extends StatefulWidget {
  final User? user;

  HomeScreen({required this.user});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<User?>(context);
    UserProvider userData = Provider.of<UserProvider>(context);

    return Scaffold(
      backgroundColor: kWhite,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: ListView(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FutureBuilder<CatishUser>(
                    future: UserServices.getUser(user!.uid),
                    builder: (context, snapshots) {
                      if (snapshots.hasData) {
                        userData.catishUser = snapshots.data!;
                        return Text(
                          "Hello, ${snapshots.data!.name}",
                          style: kMainText.copyWith(fontSize: 22),
                        );
                      } else if (snapshots.connectionState ==
                          ConnectionState.waiting) {
                        return SpinKitDoubleBounce(
                          color: kLightBrown,
                          size: 28,
                        );
                      } else {
                        return Text("error");
                      }
                    }),
                CircleAvatar(
                  minRadius: 25,
                  backgroundColor: kBaige,
                  foregroundColor: kDarkBaige,
                  child: FaIcon(FontAwesomeIcons.userAlt),
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: double.infinity,
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderSide: BorderSide(color: kLightBrown),
                          borderRadius: BorderRadius.circular(25.0),
                        )),
                      )),
                  FloatingActionButton(
                    backgroundColor: kBaige,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen()));
                    },
                    child: FaIcon(
                      FontAwesomeIcons.search,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Favourites",
              style: kSeccondText.copyWith(fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            FutureBuilder<List<Cat>>(
                future: CatProvider.getCatBreeds(),
                builder: (context, snapshots) {
                  if (snapshots.hasData) {
                    List<Cat> data = snapshots.data!;
                    return Column(
                      children: data.map((e) {
                        return Container(
                          child: Card(
                              child: Row(
                            children: [
                              Container(
                                child: Image.network(e.image),
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
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
                              )
                            ],
                          )),
                        );
                      }).toList(),
                    );
                  } else {
                    return SpinKitFadingCircle(
                      color: kDarkBrown,
                      size: 50,
                    );
                  }
                })
          ])),
    );
  }
}
