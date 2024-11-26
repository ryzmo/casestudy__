import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const CaseStudy3(),
        backgroundColor: Colors.grey[200], // Background color
      ),
    );
  }
}

class CaseStudy3 extends StatelessWidget {
  const CaseStudy3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const NewsCard(
              title: 'AI artwork of Alan Turing sells for \$1m',
              imagePath: 'assets/images/ai.jpg',
            ),
            const NewsCard(
              title: 'Up close with the 300 tonne driverless trucks',
              imagePath: 'assets/images/truck.jpg',
            ),
            const NewsCard(
              title: 'Discover the latest in renewable energy technology',
              imagePath: 'assets/images/energy.jpg',
            ),
            const NewsCard(
              title: 'Exploring space: New discoveries in 2024',
              imagePath: 'assets/images/space.jpg',
            ),
            const NewsCard(
              title: 'Breakthroughs in AI-powered health solutions',
              imagePath: 'assets/images/health.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const NewsCard({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              imagePath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: OutlinedButton(
              onPressed: () {

              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.deepPurple, width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Read More',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
          ),
          const SizedBox(height: 8), // Spacing at the bottom
        ],
      ),
    );
  }
}
