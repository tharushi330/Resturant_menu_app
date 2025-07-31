import 'package:flutter/material.dart';
import '../models/food_item.dart';

class DetailScreen extends StatelessWidget {
  final FoodItem item;

  const DetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Column(
        children: [
          Image.asset(item.image, height: 250, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(item.description),
                SizedBox(height: 16),
                Text("Price: \$${item.price.toStringAsFixed(2)}"),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Text(item.rating.toString()),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Text("Order Now"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
