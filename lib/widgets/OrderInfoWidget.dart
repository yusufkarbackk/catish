part of 'Widgets.dart';

class OrderInfoWidget extends StatelessWidget {
  final int price;

  OrderInfoWidget(this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Order Info', style: kMainText.copyWith(fontSize: 22)),
          SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: kSeccondText.copyWith(fontSize: 16),
              ),
              Text(
                NumberFormat.currency(
                        locale: 'id_IDR', decimalDigits: 0, symbol: 'Rp')
                    .format(price),
                style: kMainText.copyWith(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tax',
                style: kSeccondText.copyWith(fontSize: 16),
              ),
              Text(
                NumberFormat.currency(
                        locale: 'id_IDR', decimalDigits: 0, symbol: 'Rp')
                    .format(price * 10 / 100),
                style: kMainText.copyWith(fontSize: 18),
              ),
            ],
          ),
          Divider(),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: kSeccondText.copyWith(fontSize: 16),
              ),
              Text(
                NumberFormat.currency(
                        locale: 'id_IDR', decimalDigits: 0, symbol: 'Rp')
                    .format(price + price * 10 / 100),
                style: kMainText.copyWith(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          // NOTE: CHECKOUT BUTTON
          ElevatedButton(
              onPressed: () async {},
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.infinity, 44), primary: kLightBrown),
              child: Center(
                child: Text(
                  'Checkout',
                  style: kMainText.copyWith(fontSize: 18, color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
