import 'package:flutter/material.dart';
import 'package:mobile_app_project/models/category_container.dart';
import 'package:mobile_app_project/models/search_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _smoothPageController = PageController(
    viewportFraction: 0.85,
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello, User',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text('Welcome back!'),
                  ],
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue,
                  ),
                  child: const Icon(Icons.person_2, color: Colors.white),
                ),
              ],
            ),
            // header end
            SizedBox(height: 20),
            CustomSearchBar(),
            SizedBox(height: 25),
            Text(
              'Featured',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 400,
              child: PageView(
                controller: _smoothPageController,
                // controller: PageController(viewportFraction: 0.85,initialPage: 1),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                ],
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: _smoothPageController,
                count: 3,
                effect: WormEffect(
                  activeDotColor: Colors.blueAccent,
                  dotHeight: 13,
                  dotWidth: 13,
                ),
                onDotClicked: (index) {
                  _smoothPageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.ease,
                  );
                },
              ),
            ),
            Text(
              'Browse',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CategoryContainer(text: 'Coffee Shops',textIcon: Icons.coffee_rounded),
                Spacer(),
                CategoryContainer(text: 'Fastfood',textIcon: Icons.fastfood),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CategoryContainer(text: 'Restaurants',textIcon: Icons.restaurant),
                Spacer(),
                CategoryContainer(text: 'text',textIcon: Icons.coffee),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
