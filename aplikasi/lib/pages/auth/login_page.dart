// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, unnecessary_new

import 'package:aplikasi/pages/auth/register_page.dart';
import 'package:aplikasi/util/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ishiddenPassword = true;
 
  var emailController = TextEditingController();
  var passContrloller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.buttonBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Icon(
                  Icons.account_circle,
                  size: 150,
                  color: AppColors.yellowColor,
                ),
                //hello again
                SizedBox(height: 20),
                Text(
                  'Login,',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.account_box)),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passContrloller,
                  obscureText: ishiddenPassword,
                  decoration: InputDecoration(
                    labelText: "password",
                    border: OutlineInputBorder(),
                    suffixIcon: InkWell(
                        onTap: toggleViewPassword,
                        child: Icon(Icons.visibility)),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),

                new GestureDetector(
                  onTap: () {

                  },
                  //button to login
                  child: Container(
                    //margin side of the button
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.yellowColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Belum Daftar? ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void toggleViewPassword() {
    setState(() {
      ishiddenPassword = !ishiddenPassword;
    });
  }
}
