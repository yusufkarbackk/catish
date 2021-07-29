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

  static Future<CatishUser> getUser(String userId) async {
    DocumentSnapshot snapshot = await _userCollection.doc(userId).get();

    return CatishUser(
        id: userId,
        name: (snapshot.data() as dynamic)['name'],
        email: (snapshot.data() as dynamic)['email'],
        phone: (snapshot.data() as dynamic)['phone']);
  }
}
