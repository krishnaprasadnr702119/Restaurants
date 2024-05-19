import 'package:flutter/material.dart';
import 'package:monitoring/screens/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadLogoAsset();
  }

  Future<void> loadLogoAsset() async {
    await precacheImage(AssetImage('assets/logo.png'), context);
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/logo.png', width: 100, height: 100),
      ),
    );
  }
}
