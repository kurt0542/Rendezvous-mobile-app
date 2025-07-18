import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {

  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _isObscured = true;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(38, 159, 255, .25),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        obscureText: _isObscured,
        focusNode: _focusNode,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: _isObscured ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
              onPressed: (){
              setState(() {
                _isObscured = !_isObscured;
              });
              }),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: _isFocused ? null : 'Password',
          labelText: 'Password',
          floatingLabelBehavior: FloatingLabelBehavior.auto,
        ),
      ),
    );
  }
}
