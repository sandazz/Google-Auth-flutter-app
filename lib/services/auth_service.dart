import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // Google Sign in
  signInWithGoogle() async {
    // Begin interactive sign in process
    print("signin1");
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // obtain auth details from request
    print("signin2");
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // create a new credential for user
    print("signin3");
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken
    );

    // finally, lets sign in
    print("signin4");
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}