import 'package:flutter/material.dart';

class FormSwitch extends StatefulWidget {
  final void Function(bool isLogin) onToggle;

  const FormSwitch({super.key, required this.onToggle});

  @override
  State<FormSwitch> createState() => _FormSwitchState();
}

class _FormSwitchState extends State<FormSwitch> {
  String selected = 'Login';

  bool get isLogin => selected == 'Login';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildOption('Login'),
        SizedBox(width: 20),
        _buildOption('Signup'),
      ],
    );
  }

  Widget _buildOption(String text) {
    bool isSelected = selected == text;
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = text;
        });
        widget.onToggle(selected == 'Login');
      },
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.blue : Colors.grey,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: 3,
            width: isSelected ? 50 : 0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
