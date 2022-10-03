import 'package:aplikasi/util/colors.dart';
import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/app_textfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var namController = TextEditingController();
    var phoneController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Dimentions.screenHeight * 0.05,
          ),
          Container(
            height: Dimentions.screenHeight * 0.25,
            child: Center(
              child: Icon(
                Icons.account_box_outlined,
                size: 180,
                color: AppColors.yellowColor,
              ),
            ),
          ),
          //email
          AppTextField(
            textController: emailController,
            hintText: "email",
            icon: Icons.email,
          ),
          SizedBox(height: Dimentions.height20,),
          //password
          AppTextField(
            textController: emailController,
            hintText: "password",
            icon: Icons.password_sharp,
          ),
          SizedBox(height: Dimentions.height20,),
          //name
          AppTextField(
            textController: emailController,
            hintText: "Name",
            icon: Icons.person,
          ),
          SizedBox(height: Dimentions.height20,),
          // phone
          AppTextField(
            textController: emailController,
            hintText: "Phone",
            icon: Icons.phone,
          ),
          SizedBox(height: Dimentions.height20,)
        ],
      ),
    );
  }
}
