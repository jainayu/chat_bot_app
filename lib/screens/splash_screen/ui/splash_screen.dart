import 'package:chat_bot_app/screens/home_screen/ui/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (_, __, ___) => HomeScreen(),
        ),
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'animation',
          child: SizedBox(
            height: 150.0,
            width: 150.0,
            child: CircularProgressIndicator(
              backgroundColor: Colors.deepPurple,
              valueColor:
                  new AlwaysStoppedAnimation<Color>(Colors.deepPurpleAccent),
              strokeWidth: 8.0,
            ),
          ),
        ),
      ),
    );
  }
}
