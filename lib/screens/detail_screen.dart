part of 'Screens.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserProvider user = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(user.catishUser.name),
        ),
      ),
    );
  }
}
