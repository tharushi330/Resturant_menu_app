import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // 👈 ඔබේ මුල් පිටුව - category + food grid

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Menu App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: HomeScreen(),
    );
  }
}
