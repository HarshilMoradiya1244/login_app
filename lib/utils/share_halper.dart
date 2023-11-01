import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShareHalper with ChangeNotifier{

  void setRegister(String email, String password)async{
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setString("email",email);
    shr.setString("password",password);
  }
  Future<Map>getEmailPassword()async{
    SharedPreferences shr = await SharedPreferences.getInstance();
    String? email= shr.getString("email");
    String? password= shr.getString("password");
    return {"email":email,"password":password};
  }
  Future<void> setLoginLogout(bool isLogin)async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setBool("login", isLogin);
  }
  void getLoginStatus()async{
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.getBool("login");
  }
}