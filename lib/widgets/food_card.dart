import 'package:flutter/material.dart';
import '../models/food_item.dart';

class FoodCard extends StatelessWidget {
  final FoodItem item;
  final VoidCallback onTap;

  const FoodCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(item.image, fit: BoxFit.cover),
            ),
            Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Rs. ${item.price.toStringAsFixed(2)}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.amber, size: 16),
                Text(item.rating.toString()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
