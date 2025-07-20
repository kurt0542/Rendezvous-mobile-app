import 'package:flutter/material.dart';

class DividerLabel extends StatelessWidget {
  final String text;

  const DividerLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
