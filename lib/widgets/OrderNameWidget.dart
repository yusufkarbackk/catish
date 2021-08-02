part of 'Widgets.dart';

class OrderNameWidget extends StatelessWidget {
  final Transaction transaction;

  OrderNameWidget(this.transaction);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            transaction.image,
            height: 100,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(transaction.catName,
                      style: kMainText.copyWith(fontSize: 24)),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                      NumberFormat.currency(
                              locale: 'id_IDR', decimalDigits: 0, symbol: 'Rp')
                          .format(transaction.price),
                      style: kMainText),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
