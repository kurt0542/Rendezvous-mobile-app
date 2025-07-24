import 'package:flutter/material.dart';

class RankingListTile extends StatefulWidget {
  final String spotName;
  final int reviewCount, rank;
  final double ratingsAverage;

  const RankingListTile({
    super.key,
    required this.rank,
    required this.spotName,
    required this.reviewCount,
    required this.ratingsAverage,
  });

  @override
  State<RankingListTile> createState() => _RankingListTileState();
}

class _RankingListTileState extends State<RankingListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.star, color: Colors.amber, size: 30),
      title: Text(widget.spotName),
      subtitle: Text(
        '${widget.ratingsAverage} stars • ${widget.reviewCount} reviews',
      ),
      trailing: Text(
        '#${widget.rank}',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
