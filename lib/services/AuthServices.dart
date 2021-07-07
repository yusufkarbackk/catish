part of 'Services.dart';

class AuthServices {
  static FirebaseAuth mAuth = FirebaseAuth.instance;

  static Future<SignInSignUpResult> signIn(
      String email, String password) async {
    try {
      UserCredential result = await mAuth.signInWithEmailAndPassword(
          email: email, password: password);

      User? user = result.user;
      return SignInSignUpResult(message: null, user: user);
    } catch (e) {
      return SignInSignUpResult(
          user: null, message: e.toString().split(']')[1]);
    }
  }

  static Future<SignInSignUpResult> signUp(
      String name, String email, String password, int phone) async {
    try {
      UserCredential result = await mAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      CatishUser catishUser = CatishUser(
          id: result.user!.uid, name: name, email: email, phone: phone);
      await UserServices.storeUser(catishUser);

      User? user = result.user;
      return SignInSignUpResult(user: user, message: null);
    } catch (e) {
      return SignInSignUpResult(
          user: null, message: e.toString().split(']')[1]);
    }
  }

  static Stream<User?> get firebaseUserStream {
    return mAuth.authStateChanges();
  }
}

class SignInSignUpResult {
  late final User? user;
  late final String? message;

  SignInSignUpResult({required this.user, required this.message});
}
