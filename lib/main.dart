import 'package:flutter/material.dart';
import 'package:vahini_flutter/ui/login.dart';
import 'package:vahini_flutter/ui/forgot_password.dart';
import 'package:vahini_flutter/ui/otp.dart';
import 'package:vahini_flutter/ui/password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/forgot_password': (context) => ForgotPasswordPage(),
        '/otp': (context) => OtpScreen(),
        '/password': (context) => PasswordScreen(),
      },
    );
  }
}
