import 'package:feedforward/Constants/colors.dart';
import 'package:flutter/material.dart';

import '../services/auth/google_sign_in.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 70),
            backgroundColor: yellow[0],
            foregroundColor: black[3],
          ),
          onPressed: () {
            GoogleSignInProvider(context: context).googleLogout();
          },
          child: const Text("LogOut"),
        ),
      ),
    );
  }
}
