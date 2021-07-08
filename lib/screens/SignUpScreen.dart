part of 'Screens.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
                  height: MediaQuery.of(context).size.height * 0.50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        controller: nameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kDarkBrown, width: 2)),
                            hintText: "Enter your name",
                            labelText: 'Name',
                            labelStyle: TextStyle(color: kDarkBaige),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: kLightBrown))),
                      ),
                      TextField(
                        obscureText: true,
                        controller: phoneController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kDarkBrown, width: 2)),
                            hintText: "Enter your phone",
                            labelText: 'Phone',
                            labelStyle: TextStyle(color: kDarkBaige),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: kLightBrown))),
                      ),
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
                              int? phoneNumber =
                                  int.tryParse(phoneController.text);

                              SignInSignUpResult result =
                                  await AuthServices.signUp(
                                      nameController.text,
                                      emailController.text,
                                      passwordController.text,
                                      phoneNumber);

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
