part of 'Services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection("Catish users");

  static Future<void> storeUser(CatishUser user) async {
    _userCollection.doc(user.id).set({
      "id": user.id,
      "name": user.name,
      "email": user.email,
      "phone": user.phone
    });
  }
}
