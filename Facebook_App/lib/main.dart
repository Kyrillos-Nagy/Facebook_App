import 'package:facebook_ui/screens/home/home_screen.dart';
import 'package:facebook_ui/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookUI());
}

class FacebookUI extends StatelessWidget {
  const FacebookUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebbok UI',
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.routeName: (_) => const LoginScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
