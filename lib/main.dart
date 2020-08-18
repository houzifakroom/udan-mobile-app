import 'package:flutter/material.dart';
import 'package:udan/screens/splashScreen.dart';

void main() => runApp(Udan());

class Udan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Udan Market',
      theme: ThemeData(accentColor: Colors.orangeAccent),
      home: SplashScreen(),
    );
  }
}
