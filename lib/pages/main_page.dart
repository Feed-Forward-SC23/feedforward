import 'package:feedforward/services/email_sign_in.dart';
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
        actions: [
          TextButton(
              onPressed: () async {
                try {
                  await auth.signOut();
                  await GoogleSignInProvider(context: context).googleLogout();
                } on FirebaseException catch (e) {
                  final snackBarE =
                      SnackBar(content: Text(e.message.toString()));
                  ScaffoldMessenger.of(context).showSnackBar(snackBarE);
                }
              },
              child: const Text("Logout"))
        ],
        title: const Text("Welcome!!"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("The Floating Button was Pressed");
        },
        child: const Icon(Icons.add_rounded),
      ),
      body: Center(
          child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.home_outlined),
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Address",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("5 Star Boys Hostel, GHRCE")
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const CircleAvatar(
                    child: Icon(Icons.person_rounded),
                  ),
                )
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {},
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: "Profile"),
        ],
      ),
    );
  }
}
