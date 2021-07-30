part of 'Widgets.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<User?>(context);
    UserProvider userData = Provider.of<UserProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FutureBuilder<CatishUser>(
            future: UserServices.getUser(user!.uid),
            builder: (context, snapshots) {
              if (snapshots.hasData) {
                userData.catishUser = snapshots.data!;
                return Text(
                  "Hello, ${snapshots.data!.name}",
                  style: kMainText.copyWith(fontSize: 22),
                );
              } else if (snapshots.connectionState == ConnectionState.waiting) {
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
    );
  }
}
