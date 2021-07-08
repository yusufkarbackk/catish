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
                  height: MediaQuery.of(context).size.width * 0.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kDarkBrown, width: 2)),
                            hintText: "Enter your email",
                            labelText: 'Email',
                            labelStyle: TextStyle(color: kDarkBaige),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: kLightBrown))),
                      ),
                      TextField(
                        obscureText: true,
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kDarkBrown, width: 2)),
                            hintText: "Enter your password",
                            labelText: 'Password',
                            labelStyle: TextStyle(color: kDarkBaige),
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
                            onPressed: () async {
                              setState(() {
                                isLogin = true;
                              });
                              SignInSignUpResult result =
                                  await AuthServices.signIn(
                                      emailController.text,
                                      passwordController.text);

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            },
                            child: Center(
                              child: FaIcon(FontAwesomeIcons.paw),
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
