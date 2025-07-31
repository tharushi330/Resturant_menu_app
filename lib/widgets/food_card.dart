import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../screens/detail_screen.dart';

class FoodCard extends StatelessWidget {
  final FoodItem item;

  const FoodCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => DetailScreen(item: item)),
      ),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.asset(item.image, width: double.infinity, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("\$${item.price.toStringAsFixed(2)}"),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Text(item.rating.toString())
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
