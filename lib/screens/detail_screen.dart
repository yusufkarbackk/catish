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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.cat.race,
                      style: kMainText.copyWith(fontSize: 24),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      widget.cat.desc,
                      style: kSeccondText.copyWith(fontSize: 14),
                    ),
                    Container(
                      width: double.infinity,
                      height: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CatDetailWidget(
                              category: 'SEX', text: widget.cat.sex),
                          CatDetailWidget(
                              category: 'AGE', text: widget.cat.age.toString()),
                          CatDetailWidget(
                              category: 'WEIGHT', text: widget.cat.weight),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(double.infinity, 44),
                            primary: kLightBrown),
                        child: Center(
                          child: Text(
                            'Adopt Me',
                            style: kMainText.copyWith(
                                fontSize: 18, color: Colors.white),
                          ),
                        ))
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
