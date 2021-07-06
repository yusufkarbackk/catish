part of 'Screens.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('images/splash-screen-logo.png'),
                ),
                Container(
                  child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            helperText: "Email",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: kLightBrown))),
                      ),
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            helperText: "Email",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: kLightBrown))),
                      )
                    ],
                  ),
                ),
                Center(
                  child: isLogin
                      ? SpinKitFadingCircle(
                          color: kLightBrown,
                          size: 50,
                        )
                      : Container(
                          width: 50,
                          height: 50,
                          child: FloatingActionButton(
                            backgroundColor: kDarkBrown,
                            onPressed: () async {},
                            child: Center(
                              child: Icon(
                                MdiIcons.paw,
                                color: kWhite,
                              ),
                            ),
                          )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
