import 'package:flutter/material.dart';

class RatingsContainer extends StatefulWidget {
  const RatingsContainer({super.key});

  @override
  State<RatingsContainer> createState() => _RatingsContainerState();
}

class _RatingsContainerState extends State<RatingsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(155),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.yellow.withAlpha(230)),
          Text('5.0', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
