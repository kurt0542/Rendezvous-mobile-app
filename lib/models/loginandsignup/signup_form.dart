import 'package:flutter/material.dart';
import 'package:mobile_app_project/models/form_textfield.dart';
import 'package:mobile_app_project/models/loginandsignup/custom_divider.dart';
import 'package:mobile_app_project/models/loginandsignup/square_login_tile.dart';
import 'package:mobile_app_project/models/password_field.dart';
import 'package:mobile_app_project/services/auth_service.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormTextField(hintText: 'Email', controller: _emailController),
        SizedBox(height: 20),
        FormTextField(hintText: 'Username', controller: _usernameController),
        SizedBox(height: 20),
        PasswordField(),
        SizedBox(height: 40),
        GestureDetector(
          onTap: () {},
          child: Container(
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
        ),
        SizedBox(height: 12),
        Customdivider(text: 'or'),
        SquareLoginTile(
          imagePath: "lib/images/google_logo_48x48.png",
          onTap: () => AuthService().signInWithGoogle(),
        ),
      ],
    );
  }
}
