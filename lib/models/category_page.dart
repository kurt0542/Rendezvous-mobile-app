import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool _showFullDescription = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  'assets/rio.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(Icons.keyboard_arrow_left),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.favorite_border, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title and country
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rio de Janeiro',
                                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Icon(Icons.circle, size: 10, color: Colors.green),
                                  SizedBox(width: 4),
                                  Text('Brazil', style: TextStyle(fontSize: 14)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star, size: 16),
                                SizedBox(width: 4),
                                Text('5.0'),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('143 reviews'),
                              style: TextButton.styleFrom(padding: EdgeInsets.zero),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Text(
                      _showFullDescription
                          ? 'Rio de Janeiro, often simply called Rio, is one of Brazil\'s most iconic cities, renowned for its vibrant culture, beautiful beaches, and the towering Christ the Redeemer statue. It’s a city that never sleeps, full of music, dance, and unforgettable sights.'
                          : 'Rio de Janeiro, often simply called Rio, is one of Brazil\'s most iconic cities, renowned for...',
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _showFullDescription = !_showFullDescription;
                        });
                      },
                      child: Text(_showFullDescription ? 'Read less' : 'Read more'),
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    ),

                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upcoming tours',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('See all'),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 220,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildTourCard(
                            imagePath: 'assets/iconic_brazil.jpg',
                            title: 'Iconic Brazil',
                            days: '8 days',
                            price: 'from \$659/person',
                            rating: 4.6,
                            reviews: 56,
                          ),
                          SizedBox(width: 16),
                          buildTourCard(
                            imagePath: 'assets/beach_escape.jpg',
                            title: 'Beach Escape',
                            days: '6 days',
                            price: 'from \$589/person',
                            rating: 4.8,
                            reviews: 43,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTourCard({
    required String imagePath,
    required String title,
    required String days,
    required String price,
    required double rating,
    required int reviews,
  }) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imagePath,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 12,
                  child: Icon(Icons.favorite_border, size: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text('$days · $price', style: TextStyle(fontSize: 12, color: Colors.grey)),
          Spacer(),
          Row(
            children: [
              Icon(Icons.star, size: 14),
              SizedBox(width: 4),
              Text('$rating ($reviews)', style: TextStyle(fontSize: 12)),
              Spacer(),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 14,
                child: Icon(Icons.arrow_forward, color: Colors.white, size: 16),
              ),
            ],
          )
        ],
      ),
    );
  }
}
