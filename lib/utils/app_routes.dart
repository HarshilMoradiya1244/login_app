import 'package:flutter/cupertino.dart';
import 'package:login_app/view/home_screen.dart';
import 'package:login_app/view/registration_screen.dart';
import 'package:login_app/view/splash_screen.dart';

import '../view/login_screen.dart';

Map<String,WidgetBuilder> screen_routes ={

  '/':(context) => SplashScreen(),
  'login':(context) => LoginScreen(),
  'registration':(context) => RegistrationScreen(),
  'home':(context) => HomeScreen(),
};
