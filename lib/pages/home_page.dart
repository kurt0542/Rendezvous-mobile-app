import 'package:flutter/material.dart';
import 'package:mobile_app_project/labels/divider_label.dart';
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
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
            DividerLabel(text: 'Featured'),
            SizedBox(height: 10),
            SizedBox(
              height: 400,
              child: PageView(
                controller: _smoothPageController,
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
            DividerLabel(text: 'Browse'),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: CategoryContainer(
                    text: 'Coffee Shops',
                    textIcon: Icons.coffee_rounded,
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
            SizedBox(height: 20),
            Row(
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
            SizedBox(height: 20),
            Container(
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromRGBO(38, 159, 255, .25),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 200, top: 10),
                    child: Text(
                      'Recent Places',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Icon(Icons.place),
                          title: Text('Starbucks'),
                          subtitle: Text('Coffee Shop'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 16),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.place),
                          title: Text('Coffee bean and tea leaf'),
                          subtitle: Text('Coffee Shop'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 16),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {},
                      child: Container(
                        width: 340,
                        padding: EdgeInsets.all(12),
                        alignment: Alignment.center,
                        child: Text(
                          'Explore new places',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            DividerLabel(text: 'Your Crews'),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
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
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 10,
                  right: 20,
                  bottom: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Crew Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D47A1),
                      ),
                    ),
                    const SizedBox(height: 4),

                    // Members & status
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '[0] members',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF1976D2),
                          ),
                        ),
                        Text(
                          'No plans yet!',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF1976D2),
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 18,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 6),
                            Text(
                              'Last visited location: SM Clark',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.local_mall, size: 18),
                            SizedBox(width: 6),
                            Text("Mall"),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Color(0xFF1976D2)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                              ),
                              child: Text(
                                'Edit',
                                style: TextStyle(color: Color(0xFF1976D2)),
                              ),
                            ),
                            const SizedBox(width: 7),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF2196F3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 10,
                                ),
                              ),
                              child: Text(
                                'Start Vote',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
