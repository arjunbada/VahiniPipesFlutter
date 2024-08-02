import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Screen'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 64),
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/vahini-logo.png'),
              ),
              const SizedBox(height: 8),
              Text(
                'OTP Expires in: 00:59',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 8,
                  decoration: InputDecoration(
                    hintText: 'OTP *',
                    fillColor: Colors.white.withOpacity(0.7),
                    filled: true,
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                    counterText: '',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement validation functionality
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(160, 50),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Validate'),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  // TODO: Implement resend OTP functionality
                },
                child: Text(
                  'Resend OTP',
                  style: TextStyle(
                    color: Colors.blue.withOpacity(0.7),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
