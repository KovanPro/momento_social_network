import 'dart:async';
import 'package:flutter/material.dart';
import 'mainloginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    newMethod();
  }

  Timer newMethod() {
    return Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MainLoginscreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                width: 110,
                height: 100,
                image: AssetImage('assets/images/splashlogo.png'),
              ),
              SizedBox(width: 10),
              Text(
                'Momento',
                style: TextStyle(
                  fontFamily: 'sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 42,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ));
  }
}
