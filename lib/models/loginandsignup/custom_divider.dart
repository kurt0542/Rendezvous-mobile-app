import 'package:flutter/material.dart';

class Customdivider extends StatelessWidget {
  final String text;

  const Customdivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(thickness: 2, color: Colors.grey)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(text, style: TextStyle(fontSize: 16)),
        ),
        Expanded(child: Divider(thickness: 2, color: Colors.grey)),
      ],
    );
  }
}
