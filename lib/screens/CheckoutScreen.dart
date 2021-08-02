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
                  child: Text('My Order',
                      style: kMainText.copyWith(fontSize: 24))),
              SizedBox(
                height: 16,
              ),
              //NOTE: ORDER NAME
              OrderNameWidget(widget.transactions),
              //NOTE: PICKUP LOCATION
              PickupLocationWidget(),
              Divider(),
              SizedBox(
                height: 22,
              ),
              //NOTE: ORDER INFO
              OrderInfoWidget(widget.transactions.price)
            ],
          ),
        ),
      ),
    );
  }
}
