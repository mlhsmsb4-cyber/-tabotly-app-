import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/splash_screen.dart';
import 'screens/access_code_screen.dart';
import 'screens/phone_auth_screen.dart';
import 'screens/home_screen.dart';
import 'screens/admin_dashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const TABOTLyApp());
}

class TABOTLyApp extends StatelessWidget {
  const TABOTLyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TABOTLy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF239E46),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF239E46),
          secondary: const Color(0xFFE70013),
        ),
        fontFamily: 'Cairo',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/access': (context) => const AccessCodeScreen(),
        '/auth': (context) => const PhoneAuthScreen(),
        '/home': (context) => const HomeScreen(),
        '/admin': (context) => const AdminDashboard(),
      },
    );
  }
}
