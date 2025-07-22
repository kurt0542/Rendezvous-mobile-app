import 'package:flutter/material.dart';
import 'package:mobile_app_project/models/custom_divider.dart';
import 'package:mobile_app_project/models/form_textfield.dart';
import 'package:mobile_app_project/models/password_field.dart';
import 'package:mobile_app_project/pages/MainFrame.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormTextField(hintText: 'Username'),
        SizedBox(height: 20),
        PasswordField(),
        SizedBox(height: 20),
        Text(
          'Forgot your password?',
          style: TextStyle(
            fontSize: 18,
            color: Color.fromRGBO(40, 159, 255, 1),
          ),
        ),
        SizedBox(height: 40),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainFrame()),
            );
          },
          child: Container(
            height: 55,
            margin: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 142, 255, 0.91),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 12),
        Customdivider(text: 'or'),
      ],
    );
  }
}
