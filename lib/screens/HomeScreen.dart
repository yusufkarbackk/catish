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
    return Scaffold(
      backgroundColor: kWhite,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: ListView(children: [
            HomeScreenHeader(),
            SizedBox(
              height: 32,
            ),
            SearchBarWidget(),
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
            FavouritesWidget()
          ])),
    );
  }
}
