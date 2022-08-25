import 'package:flutter/material.dart';
import 'package:flutter_gmaps/screens/ProfileScreen.dart';
import 'package:flutter_gmaps/screens/signin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: ProfileScreen(),
    );
  }
}
