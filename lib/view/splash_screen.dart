import 'package:flutter/material.dart';
import 'package:login_app/utils/share_halper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  bool? isLogin;
  void initState() {
    super.initState();
    create();
  }
  Future<void> create()async{
    ShareHalper shr = ShareHalper();
   isLogin = await shr.getLoginStatus();
   }
  @override
  Widget build(BuildContext context) {
     Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, isLogin==false || isLogin==null ?'login':'home');
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            "assets/images/pangvinlogo.png",
            height: 200,
          ),
        ),
      ),
    );
  }
}
