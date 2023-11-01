import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  bool passVisible = false;

  void togglePassword() {
    passVisible = !passVisible;
    notifyListeners();
  }
}