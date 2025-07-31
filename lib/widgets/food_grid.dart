import 'package:flutter/material.dart';
import '../models/food_item.dart';
import 'food_card.dart';

class FoodGrid extends StatelessWidget {
  final List<FoodItem> foodItems;

  const FoodGrid({required this.foodItems});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: foodItems.length,
      itemBuilder: (ctx, i) => FoodCard(item: foodItems[i]),
    );
  }
}
