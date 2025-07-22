import 'package:flutter/material.dart';

class DistanceCard extends StatefulWidget {
  final String name, category, distance;
  final IconData icon;
  const DistanceCard({
    super.key,
    required this.name,
    required this.category,
    required this.icon,
    required this.distance
  });

  @override
  State<DistanceCard> createState() => _DistanceCardState();
}

class _DistanceCardState extends State<DistanceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(widget.icon, size: 32, color: Colors.blueAccent),
            const SizedBox(height: 10),
            Text(
              widget.name,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Text(
              widget.category,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const Spacer(),
            Row(
              children: [
                const Icon(Icons.location_on, size: 14, color: Colors.red),
                const SizedBox(width: 4),
                Text(widget.distance, style: const TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
