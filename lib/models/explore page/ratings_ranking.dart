import 'package:flutter/material.dart';
import 'package:mobile_app_project/models/explore%20page/ranking_list_tile.dart';

class RatingsRanking extends StatefulWidget {
  const RatingsRanking({super.key});

  @override
  State<RatingsRanking> createState() => _RatingsRankingState();
}

class _RatingsRankingState extends State<RatingsRanking> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 380,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(38, 159, 255, .25),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Most reviewed spots', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            SizedBox(
              height: 305,
              child: ListView(
                children: [
                  RankingListTile(
                    rank: 1,
                    spotName: 'Coffee Haven',
                    reviewCount: 220,
                    ratingsAverage: 4.9,
                  ),
                  RankingListTile(
                    rank: 2,
                    spotName: 'Brew & Bean',
                    reviewCount: 198,
                    ratingsAverage: 4.8,
                  ),
                  RankingListTile(
                    rank: 3,
                    spotName: 'Cafe Delight',
                    reviewCount: 185,
                    ratingsAverage: 4.8,
                  ),
                  RankingListTile(
                    rank: 4,
                    spotName: 'Mocha Magic',
                    reviewCount: 170,
                    ratingsAverage: 4.7,
                  ),
                  RankingListTile(
                    rank: 5,
                    spotName: 'Espresso Express',
                    reviewCount: 160,
                    ratingsAverage: 4.7,
                  ),
                  RankingListTile(
                    rank: 6,
                    spotName: 'Bean Street',
                    reviewCount: 150,
                    ratingsAverage: 4.6,
                  ),
                  RankingListTile(
                    rank: 7,
                    spotName: 'Latte Lounge',
                    reviewCount: 140,
                    ratingsAverage: 4.6,
                  ),
                  RankingListTile(
                    rank: 8,
                    spotName: 'The Daily Grind',
                    reviewCount: 130,
                    ratingsAverage: 4.5,
                  ),
                  RankingListTile(
                    rank: 9,
                    spotName: 'Ground Up',
                    reviewCount: 120,
                    ratingsAverage: 4.5,
                  ),
                  RankingListTile(
                    rank: 10,
                    spotName: 'Caffeine Fix',
                    reviewCount: 110,
                    ratingsAverage: 4.4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
