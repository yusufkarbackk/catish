part of 'Screens.dart';

class DetailScreen extends StatefulWidget {
  final Cat cat;
  DetailScreen({required this.cat});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    UserProvider user = Provider.of<UserProvider>(context);
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            width: double.infinity,
            child: Image.network(
              widget.cat.image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      widget.cat.race,
                      style: kMainText,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
