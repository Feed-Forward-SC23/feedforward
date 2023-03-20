import 'package:feedforward/services/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import 'services/email_ui.dart';
import 'services/firebase_options.dart';
import 'services/login_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => GoogleSignInProvider(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Feed Forward',
//         theme: ThemeData(
//           useMaterial3: true,
//           brightness: Brightness.dark,
//         ),
//         routes: {
//           '/': (context) => const HomePage(),
//           '/email': (context) => const EmailSignIn(),
//           // '/mainPage': (context) => const MainPage(),
//         },
//       ),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Feed Forward',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/email': (context) => const EmailSignIn(),
        // '/mainPage': (context) => const MainPage(),
      },
    );
  }
}
