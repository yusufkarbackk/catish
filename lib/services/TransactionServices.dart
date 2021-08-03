part of 'Services.dart';

class TransactionServices {
  static CollectionReference _transactionCollection =
      FirebaseFirestore.instance.collection("Transactions");

  static void storeTransaction(CatishTransaction transaction) async {
    await _transactionCollection.doc().set({
      "userId": transaction.id,
      'name': transaction.name,
      'cat name': transaction.catName,
      'email': transaction.email,
      'price': transaction.price,
      'imageURL': transaction.image,
      'time': transaction.time
    });
  }

  static Future<QuerySnapshot> getTransactions(String userId) async {
    Future<QuerySnapshot> result =
        _transactionCollection.where('userId', isEqualTo: userId).get();

    return result;
  }
}
