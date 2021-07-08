part of 'Screens.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                child: Image.asset('images/splash-screen-logo.png'),
              ),
              Text('Welcome to Catish'),
              Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Center(
                          child: Text(
                            "Login",
                            style: kMainText.copyWith(color: Colors.white),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: kDarkBrown,
                            elevation: 2,
                            minimumSize: Size(180, 40)),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: kWhite, elevation: 2),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              style: kMainText,
                            ),
                          ))
                    ],
                  ))
            ],
          )),
    );
  }
}
