import 'package:feedforward/services/google_sign_in.dart';
import 'package:feedforward/services/login_ui.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  // final String email;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late String email;
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    // email = widget.email;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome!!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            // await auth.signOut();
            await GoogleSignInProvider(context: context).googleLogout();
          } on FirebaseException catch (e) {
            final snackBarE = SnackBar(content: Text(e.message.toString()));
            ScaffoldMessenger.of(context).showSnackBar(snackBarE);
          }
        },
        child: const Icon(Icons.logout),
      ),
      body: const Center(
        child: Text("Welcome to FeedForward"),
      ),
    );
  }
}
