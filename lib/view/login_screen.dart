import 'package:flutter/material.dart';
import 'package:login_app/utils/share_halper.dart';
import 'package:provider/provider.dart';

import '../provider/thme_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login Page",style: TextStyle(color: Colors.purple),),
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
                  Image.asset("assets/images/pangvinlogo.png",height: 150),
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
                      labelText: 'Password',
                      labelStyle: Theme.of(context).textTheme.titleMedium,
                      hintStyle:Theme.of(context).textTheme.titleMedium ,
                      filled: true,
                      fillColor: Colors.purple.shade100,
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility_outlined
                            ),
                        onPressed: () {
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.purple, fontSize: 15),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: ()async {
                        ShareHalper shr = ShareHalper();
                        Map m1 =await shr.getEmailPassword();
                        if(txtEmail.text == m1['email'] && txtPassword.text==m1['password'])
                          {
                            shr.setLoginLogout(true);
                            Navigator.pushReplacementNamed(context, 'home');
                          }
                        else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:  Text("Email or Password IS Invalid",style: TextStyle(color: Colors.red),)));
                          }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'registration');
                  }, child: Text("New User ? Sign up , Create Account",style: TextStyle(color: Colors.purple,fontSize: 15)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
