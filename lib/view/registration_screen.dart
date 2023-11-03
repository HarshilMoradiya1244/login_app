import 'package:flutter/material.dart';
import 'package:login_app/utils/share_halper.dart';
import 'package:provider/provider.dart';

import '../provider/thme_provider.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Register Page",style: TextStyle(color: Colors.purple),),
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.purple,)),
          actions: [
            Consumer<ThemeProvider>(
              builder: (context, value1, child) => Switch(
                value: value1.isLight,
                onChanged: (value) {
                  value1.changeThem();
                },
              ),
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image.asset("assets/images/pangvinlogo.png",height: 200,),
                  TextField(
                    controller: txtEmail,
                    keyboardType: TextInputType.emailAddress,
                    style: Theme.of(context).textTheme.titleMedium,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email or Mobile No',
                      hintText: "Enter valid email id",
                      labelStyle: Theme.of(context).textTheme.titleMedium,
                      hintStyle:Theme.of(context).textTheme.titleMedium ,
                      filled: true,
                      fillColor: Colors.purple.shade100,
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: txtPassword,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: Theme.of(context).textTheme.titleMedium,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter secure Password',
                      hintStyle:Theme.of(context).textTheme.titleMedium ,
                      labelText: 'Password',
                      labelStyle: Theme.of(context).textTheme.titleMedium,
                      filled: true,
                      fillColor: Colors.purple.shade100,
                    ),
                  ),

                  SizedBox(height: 50,),

                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        ShareHalper shr = ShareHalper();
                        shr.setRegister(txtEmail.text, txtPassword.text);
                        Navigator.pop(context,'login');
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:  Text("Registration Completed")));
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
