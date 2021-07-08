part of 'Screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? userState = Provider.of<User?>(context);
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('mAIN SCREEN'),
            ElevatedButton(
                onPressed: () {
                  AuthServices.signOut(context);
                },
                child: Text('Sign out'))
          ]),
        ),
      ),
    );
  }
}
