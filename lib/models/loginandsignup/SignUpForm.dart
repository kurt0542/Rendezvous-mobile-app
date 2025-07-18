import 'package:flutter/material.dart';
import 'package:mobile_app_project/models/CustomDivider.dart';
import 'package:mobile_app_project/models/FormTextField.dart';
import 'package:mobile_app_project/models/PasswordField.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FormTextField(hintText: 'Email'),
      SizedBox(height: 20),
      FormTextField(hintText: 'Username'),
      SizedBox(height: 20),
      PasswordField(),
      SizedBox(height: 40),
      Container(
        height: 55,
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 142, 255, 0.91),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            'Register',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      SizedBox(height: 12),
      Customdivider(text: 'or')
    ],);
  }
}
