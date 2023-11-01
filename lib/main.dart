import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/provider/thme_provider.dart';
import 'package:login_app/utils/app_routes.dart';
import 'package:login_app/utils/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) =>ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) =>MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: value.isLight ? lightTheme : darkTheme,
          routes: screen_routes,
        ),
      ),
    ),
  );
}
