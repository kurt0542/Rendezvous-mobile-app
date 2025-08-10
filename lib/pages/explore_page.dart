import 'package:flutter/material.dart';
import 'package:mobile_app_project/labels/divider_label.dart';
import 'package:mobile_app_project/models/category_container.dart';
import 'package:mobile_app_project/models/category_page.dart';
import 'package:mobile_app_project/models/explore%20page/distance_card.dart';
import 'package:mobile_app_project/models/explore%20page/must_try_card.dart';
import 'package:mobile_app_project/models/explore%20page/ratings_ranking.dart';
import 'package:mobile_app_project/models/search_bar.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            CustomSearchBar(paddingValue: 20),
            DividerLabel(text: 'Nearby spots', paddingValue: 20),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  DistanceCard(
                    name: 'Starbucks',
                    category: 'Coffee Shop',
                    icon: Icons.local_cafe,
                    distance: '500m',
                  ),
                  DistanceCard(
                    name: '7-Eleven',
                    category: 'Convenience Store',
                    icon: Icons.store,
                    distance: '200m',
                  ),
                  DistanceCard(
                    name: 'Samgyupsalamat',
                    category: 'Korean BBQ',
                    icon: Icons.restaurant,
                    distance: '850m',
                  ),
                  DistanceCard(
                    name: 'SM Clark',
                    category: 'Shopping Mall',
                    icon: Icons.shopping_bag,
                    distance: '1.2km',
                  ),
                  DistanceCard(
                    name: 'Timezone',
                    category: 'Arcade',
                    icon: Icons.videogame_asset,
                    distance: '1.0km',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            DividerLabel(text: 'Must-Try Spots', paddingValue: 20),
            SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [MustTryCard(), MustTryCard()],
              ),
            ),
            RatingsRanking(),
            DividerLabel(text: 'Swipe to explore', paddingValue: 20),
            Container(
              height: 375,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            DividerLabel(text: 'Categories', paddingValue: 20),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: CategoryContainer(
                      text: 'Coffee Shops',
                      textIcon: Icons.coffee_rounded,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CategoryPage()),
                          );
                        }
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: CategoryContainer(
                      text: 'Fastfood',
                      textIcon: Icons.fastfood,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: CategoryContainer(
                      text: 'Restaurants',
                      textIcon: Icons.restaurant,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: CategoryContainer(
                      text: 'Parks',
                      textIcon: Icons.park_rounded,
                    ),
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
