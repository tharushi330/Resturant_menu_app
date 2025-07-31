import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories = ['All', 'Pizza', 'Burger', 'Drinks', 'Dessert'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(
            label: Text(categories[index]),
            backgroundColor: Colors.redAccent.shade100,
          ),
        ),
      ),
    );
  }
}
