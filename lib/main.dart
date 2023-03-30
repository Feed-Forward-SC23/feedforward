import 'package:feedforward/pages/allProducts.dart';
import 'package:feedforward/pages/main_page.dart';
import 'package:feedforward/services/auth/email_ui.dart';
import 'package:feedforward/services/auth/firebase_options.dart';
import 'package:feedforward/services/auth/login_ui.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'pages/bottomNav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
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
        // brightness: Brightness.dark,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/bottomNavBar': (context) => const BottomNavBar(),
        '/email': (context) => const EmailSignIn(),
        '/mainpage': (context) => const MainPage(),
        '/allPro': (context) => const AllProducts(),
      },
      // home: const BottomNavBar(),
    );
  }
}
