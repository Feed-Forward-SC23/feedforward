import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../pages/constant.dart';
import 'google_sign_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Authentication",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        // actions: [
        //   TextButton(
        //       onPressed: () {
        //         final provider =
        //             Provider.of<GoogleSignInProvider>(context, listen: false);
        //         provider.logout();
        //       },
        //       child: const Text("Logout!"))
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 70),
              ),
              onPressed: () {
                // final provider =
                //     Provider.of<GoogleSignInProvider>(context, listen: false);
                // provider.googleLogin();
                GoogleSignInProvider(context: context).googleLogin();
              },
              icon: const FaIcon(FontAwesomeIcons.google),
              label: const Text("Sign-in with Google"),
            ),
            buildHeight(10.0),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 70),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/email');
              },
              icon: const FaIcon(FontAwesomeIcons.mailchimp),
              label: const Text("Sign-in with Email"),
            ),
          ],
        ),
      ),
    );
  }
}
