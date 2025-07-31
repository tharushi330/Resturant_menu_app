import 'package:flutter/material.dart';
import '../widgets/category_list.dart';
import '../widgets/food_grid.dart';
import '../data/dummy_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("🍽 Restaurant Menu"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryList(),
          Expanded(child: FoodGrid(foodItems: foodItems)),
        ],
      ),
    );
  }
}
