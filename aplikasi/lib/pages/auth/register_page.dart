// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:aplikasi/util/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isHiddenPassword = true;
  bool isHiddenCPassword = true;

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var cpassContrloller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.buttonBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Register Here',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        labelText: "Name",
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.person)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.email)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passController,
                    obscureText: isHiddenPassword,
                    decoration: InputDecoration(
                        labelText: "password",
                        border: OutlineInputBorder(),
                        suffixIcon: InkWell(
                            onTap: toggleViewPass,
                            child: Icon(Icons.visibility))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: cpassContrloller,
                    obscureText: isHiddenCPassword,
                    decoration: InputDecoration(
                        labelText: "Confirm password",
                        border: OutlineInputBorder(),
                        suffixIcon: InkWell(
                            onTap: toggleViewCPass,
                            child: Icon(Icons.visibility))),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  new GestureDetector(
                    onTap: () {
                      // _authUserSignup();
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
                          'Register',
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
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Sudah Memiliki Akun? ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            }),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    
  }

  

  void toggleViewPass() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  void toggleViewCPass() {
    setState(() {
      isHiddenCPassword = !isHiddenCPassword;
    });
  }
}
