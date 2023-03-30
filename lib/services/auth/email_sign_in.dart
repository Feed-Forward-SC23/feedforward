import 'package:feedforward/pages/bottomNav.dart';
import 'package:feedforward/pages/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmailPassword {
  String email;
  String password;
  BuildContext context;

  EmailPassword(
      {required this.email, required this.password, required this.context});

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create a sign-up function (new user)
  void signUp() async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      // const snackBar =
      //     SnackBar(content: Text("Successfully created a new user"));
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MainPage()),
          (route) => false);
    } on FirebaseAuthException catch (e) {
      final snackBarE = SnackBar(content: Text(e.message.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackBarE);
    }
  }

  // create a log-in function (existing user)
  void signIn() async {
    try {
      UserCredential cred = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      // const snackBar = SnackBar(
      //   content: Text("Logged in as an existing user"),
      // );
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const BottomNavBar(),
          ),
          (route) => false);
    } on FirebaseAuthException catch (e) {
      final snackBarE = SnackBar(content: Text(e.message.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackBarE);
    }
  }

  // create a logout function (exiting the app)
  void signOut() {
    _auth.signOut();
  }

  // create a password reset function
  void passwordReset() async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      const snackBar = SnackBar(content: Text("Password reset mail sent!"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } on FirebaseAuthException catch (e) {
      if (e.message.toString() == "Given String is empty or null") {
        const snackBarE =
            SnackBar(content: Text("Enter a email to sent reset link."));
        ScaffoldMessenger.of(context).showSnackBar(snackBarE);
      } else {
        final snackBarE = SnackBar(content: Text(e.message.toString()));
        ScaffoldMessenger.of(context).showSnackBar(snackBarE);
      }
    }
  }
}
