import 'package:flutter/material.dart';
import 'package:mobile_app_project/models/explore%20page/ratings_container.dart';

class MustTryCard extends StatefulWidget {
  const MustTryCard({super.key});

  @override
  State<MustTryCard> createState() => _MustTryCardState();
}

class _MustTryCardState extends State<MustTryCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12, top: 12),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'lib/images/resto.jpg',
              width: 300,
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 300,
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withAlpha(77),
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorited = !isFavorited;
                });
              },
              child: Icon(
                Icons.star,
                color: isFavorited ? Colors.yellow : Colors.white,
                size: 25,
              ),
            ),
          ),
          Positioned(
            left: 16,
            bottom: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Place Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    RatingsContainer(),
                    Text('| 100 Reviews', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                    ),)
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: Material(
              color: Colors.black.withAlpha(190),
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Explore',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
