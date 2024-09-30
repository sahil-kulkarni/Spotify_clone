
import 'package:flutter/material.dart';
import 'package:spotify_clone/Presentation/Pages/IntroPages/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    redirect();
  }

  Future<void>redirect() async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => GetStartedPage(),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage("images/logo.png")
          ),
      ),

    );
  }
}