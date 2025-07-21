import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String text;
  final IconData textIcon;

  const CategoryContainer({
    super.key,
    required this.text,
    required this.textIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 175, // ✅ Cap max width, will shrink if needed
      ),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(38, 159, 255, .25),
              blurRadius: 10,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              right: 10,
              top: 40,
              child: Icon(
                textIcon,
                size: 50,
                color: Color.fromRGBO(15, 20, 40, 0.6),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Text(
                text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
