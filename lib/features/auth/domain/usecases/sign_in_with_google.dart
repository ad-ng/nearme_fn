import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<String?> signInWithGoogle() async {
  try {
    // Step 1: Trigger the authentication flow
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    if (gUser == null) {
      print("Google sign-in aborted");
      return null;
    }

    // Step 2: Obtain the auth details from the request
    final GoogleSignInAuthentication gAuth = await gUser.authentication;

    // Step 3: Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    // Step 4: Sign in to Firebase with the Google credential
    final userCredential = await FirebaseAuth.instance.signInWithCredential(
      credential,
    );

    final user = userCredential.user;

    if (user != null) {
      // Step 5: Get the Firebase ID token (JWT)
      final idToken = await user.getIdToken();

      print("User signed in: ${user.displayName}");
      print("Firebase ID Token: $idToken");

      return idToken;
    } else {
      print("Sign-in failed: user is null.");
      return null;
    }
  } catch (e) {
    print("Google Sign-In error: $e");
    return null;
  }
}
