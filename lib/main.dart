import 'package:flutter/material.dart';
import 'screens/authentication/authentication_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return AuthenticationScreen(
                screenSize: ScreenSize.Small,
              );
            } else if (constraints.maxWidth <= 1200) {
              return AuthenticationScreen(
                screenSize: ScreenSize.Medium,
              );
            } else {
              return AuthenticationScreen(
                screenSize: ScreenSize.Large,
              );
            }
          },
        ),
      ),
    );
  }
}
