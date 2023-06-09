import 'package:feedforward/pages/bottomNav.dart';
import 'package:feedforward/pages/main_page.dart';
import 'package:feedforward/services/auth/login_ui.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  final BuildContext context;
  GoogleSignInProvider({required this.context});

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => user;

  Future googleLogin() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavBar()),
        (route) => false);

    notifyListeners();
  }

  Future googleLogout() async {
    try {
      FirebaseAuth.instance.signOut();
      const snackBar = SnackBar(content: Text("Successfully Logged Out!"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
          (route) => false);

      await googleSignIn.disconnect();
    } on FirebaseException catch (e) {
      final snackBarE = SnackBar(content: Text(e.message.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackBarE);
    }
  }
}
