import 'package:flutter/material.dart';
import 'package:minimalsocialture/auth/auth_page.dart';
import 'package:minimalsocialture/auth/login_or_register.dart';
import 'package:minimalsocialture/page/home_page.dart';
import 'package:minimalsocialture/page/profile_page.dart';
import 'package:minimalsocialture/page/users_page.dart';
import 'package:minimalsocialture/theme/dark_mode.dart';
import 'package:minimalsocialture/theme/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      home: const AuthPage(),
      routes: {
        '/login_register_page': (context) => const LoginOrRegister(),
        '/home_page': (context) => const HomePage(),
        '/profile_page': (context) =>  ProfilePage(),
        '/users_page': (context) => const UsersPage(),
      },
    );
  }
}
