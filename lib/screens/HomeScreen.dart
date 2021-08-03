part of 'Screens.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'Categories',
              style: kSeccondText.copyWith(fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            CategoriesWidget(), 
            SizedBox(
              height: 30,
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
