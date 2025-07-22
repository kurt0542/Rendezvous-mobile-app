import 'package:flutter/material.dart';

class DividerLabel extends StatelessWidget {
  final String text;
  final double? paddingValue;
  const DividerLabel({super.key, required this.text, this.paddingValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingValue ?? 0.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: 'Poppins'
        ),
      ),
    );
  }
}
