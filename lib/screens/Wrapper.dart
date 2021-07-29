part of 'Screens.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? catishUser = Provider.of<User?>(context);

    if (!(prevPage is SplashScreen)) {
      prevPage = SplashScreen();
    } else {
      if (!(prevPage is HomeScreen)) {
        prevPage = HomeScreen(
          user: catishUser,
        );
      }
    }

    return catishUser == null
        ? SplashScreen()
        : HomeScreen(
            user: catishUser,
          );
  }
}
