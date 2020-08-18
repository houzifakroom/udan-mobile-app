import 'dart:async';

import 'package:flutter/material.dart';
import 'package:udan/screens/homePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // time to nav to home page
  void initState() {
    // TODO: implement initState
    super.initState();
    StartTimer();
  }

  StartTimer() async {
    var duration = Duration(seconds: 6);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Text(
              "Udan Market",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            )),
            Image.asset('assets/images/doctor.png'),
            SizedBox(
              height: 45,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            CircularProgressIndicator(
              backgroundColor: Colors.orangeAccent,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}
