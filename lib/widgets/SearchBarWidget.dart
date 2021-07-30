part of 'Widgets.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
