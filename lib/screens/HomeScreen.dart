part of 'Screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<User?>(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: ListView(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FutureBuilder<CatishUser>(
                    future: UserServices.getUser(user!.uid),
                    builder: (context, snapshots) {
                      if (snapshots.hasData) {
                        return Text(
                          "Hello, ${snapshots.data!.name}",
                          style: kMainText.copyWith(fontSize: 22),
                        );
                      } else if (snapshots.connectionState ==
                          ConnectionState.waiting) {
                        return SpinKitDoubleBounce(
                          color: kLightBrown,
                          size: 28,
                        );
                      } else {
                        return Text("error");
                      }
                    }),
                CircleAvatar(
                  minRadius: 25,
                  backgroundColor: kBaige,
                  foregroundColor: kDarkBaige,
                  child: FaIcon(FontAwesomeIcons.userAlt),
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: double.infinity,
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderSide: BorderSide(color: kLightBrown),
                          borderRadius: BorderRadius.circular(25.0),
                        )),
                      )),
                  FloatingActionButton(
                    backgroundColor: kBaige,
                    onPressed: () {},
                    child: FaIcon(
                      FontAwesomeIcons.search,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Category",
              style: kSeccondText,
            )
          ])),
    );
  }
}
