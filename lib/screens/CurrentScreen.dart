part of 'Screens.dart';

class CurrentScreen extends StatefulWidget {
  @override
  _CurrentScreenState createState() => _CurrentScreenState();
}

class _CurrentScreenState extends State<CurrentScreen> {
  late int pageIndex;
  @override
  // ignore: must_call_super
  void initState() {
    pageIndex = 0;
  }

  List<Widget> screenList = [HomeScreen(), OrderScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kDarkBrown,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.paw), label: 'Home', ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.shoppingCart), label: 'my Order')
        ],
      ),
    );
  }
}
