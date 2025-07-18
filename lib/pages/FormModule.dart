import 'package:flutter/material.dart';
import 'package:mobile_app_project/models/loginandsignup/FormSwitch.dart';
import 'package:mobile_app_project/models/loginandsignup/LoginForm.dart';
import 'package:mobile_app_project/models/loginandsignup/SignUpForm.dart';

class FormModule extends StatefulWidget {
  const FormModule({super.key});

  @override
  State<FormModule> createState() => _FormModuleState();
}

class _FormModuleState extends State<FormModule> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Colors.blue[200]!, Colors.blue],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isLogin ? 'Login' : 'Signup',
                        style: const TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Text(
                        isLogin ? 'Welcome back!' : 'Let\'s get you started.',
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                // Just use Expanded here for the scrollable container
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 40),
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 750),
                            transitionBuilder: (Widget child, Animation<double> animation) {
                              return FadeTransition(
                                opacity: animation,
                                child: SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(0.0, 0.1),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                ),
                              );
                            },
                            child: isLogin
                                ? const LoginForm(key: ValueKey('login'))
                                : const SignUpForm(key: ValueKey('signup')),
                          ),

                          // Spacer is not needed inside a scroll view — use SizedBox
                          const SizedBox(height: 40),

                          FormSwitch(
                            onToggle: (bool value) {
                              setState(() {
                                isLogin = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
