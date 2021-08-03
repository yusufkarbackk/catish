part of 'Screens.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? user = Provider.of(context);
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: TransactionServices.getTransactions(user!.uid),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<CatishTransaction> transactions =
                    snapshot.data as List<CatishTransaction>;

                return SingleChildScrollView(
                  child: Column(
                    children: [],
                  ),
                );
              } else {
                return SpinKitFadingCircle();
              }
            }),
      ),
    );
  }
}
