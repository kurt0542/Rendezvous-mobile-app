import 'package:flutter/material.dart';

class SquareLoginTile extends StatefulWidget {
  final String imagePath;
  final VoidCallback? onTap;

  const SquareLoginTile({super.key, required this.imagePath, required this.onTap});

  @override
  State<SquareLoginTile> createState() => _SquareLoginTileState();
}

class _SquareLoginTileState extends State<SquareLoginTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: 4,
      shadowColor: Colors.black.withAlpha(90),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: widget.onTap,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset(widget.imagePath, height: 58),
        ),
      ),
    );
  }
}
