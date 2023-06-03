import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  final ScreenSize screenSize;

  AuthenticationScreen({required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authentication'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: _getWelcomeTextSize(),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Login button logic
              },
              child: Text('Login'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Sign Up button logic
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  double _getWelcomeTextSize() {
    switch (screenSize) {
      case ScreenSize.Small:
        return 24;
      case ScreenSize.Medium:
        return 28;
      case ScreenSize.Large:
        return 32;
    }
  }
}

enum ScreenSize { Small, Medium, Large }
