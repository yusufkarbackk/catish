part of 'Screens.dart';

class Checkoutscreen extends StatefulWidget {
  final Transaction transactions;

  Checkoutscreen(this.transactions);

  @override
  _CheckoutscreenState createState() => _CheckoutscreenState();
}

class _CheckoutscreenState extends State<Checkoutscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Text('My Order', style: kMainText)),
              SizedBox(
                height: 16,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      widget.transactions.image,
                      height: 100,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(widget.transactions.catName,
                                style: kMainText.copyWith(fontSize: 24)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                                NumberFormat.currency(
                                        locale: 'id_IDR',
                                        decimalDigits: 0,
                                        symbol: 'Rp')
                                    .format(widget.transactions.price),
                                style: kSeccondText),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
