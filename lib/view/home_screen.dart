import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/thme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login App"),
         actions: [
           Consumer<ThemeProvider>(
               builder: (context, value, child) => Switch(value: value.isLight, onChanged: (value1) {
                 value.changeThem();
               },)
           ),
         ],
        ),
        body: Center(
          child: Column(
            children: [
            ],
          ),
        ),
      ),
    );
  }
}
