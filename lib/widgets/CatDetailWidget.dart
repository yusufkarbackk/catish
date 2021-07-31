part of 'Widgets.dart';

class CatDetailWidget extends StatelessWidget {
  final String category;
  final String text;

  CatDetailWidget({required this.category, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 4,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kBaige,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              category,
              style: kSeccondText.copyWith(
                fontSize: 12,
              ),
            ),
            Text(
              text,
              style: kMainText.copyWith(
                fontSize: 14,
              ),
            )
          ],
        ));
  }
}
