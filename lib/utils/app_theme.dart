import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white70,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 25,
          color: Colors.black,
        )),
    textTheme: TextTheme(
      titleLarge:TextStyle(fontSize:25,color:Colors.black),
      titleMedium:TextStyle(fontSize:15,color:Colors.black),
    ),
    brightness: Brightness.light);


ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 25,
          color: Colors.white,
        )),
    textTheme: TextTheme(
      titleLarge:TextStyle(fontSize:25,color:Colors.black),
      titleMedium:TextStyle(fontSize:15,color:Colors.black),
    ),
    brightness: Brightness.dark);
