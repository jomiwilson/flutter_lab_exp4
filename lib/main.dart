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
        appBar: AppBar(
          title: const Text('Assets and Media'),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Flutter Image Gallery',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            // Single image loaded from the assets folder
            Image.asset(
              'assets/images/flutter.png',
              height: 120,
            ),
            const SizedBox(height: 16),
            // Image gallery using GridView
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(8),
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: [
                  Image.asset('assets/images/flutter.png'),
                  Image.asset('assets/images/flutter.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
