import 'package:flutter/material.dart';
import 'package:mobile_app_project/models/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            // header beginning
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
                const Spacer(),
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
            const SizedBox(height: 20),
            CustomSearchBar(),
          ],
        ),
      ),
    );
  }
}
