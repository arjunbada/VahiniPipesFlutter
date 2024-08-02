import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final String registerType;

  RegisterPage({required this.registerType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register as $registerType'),
      ),
      body: Center(
        child: Text('Register Page for $registerType'),
      ),
    );
  }
}
