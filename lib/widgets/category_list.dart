import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories;
  final Function(int) onSelected;
  final int selectedIndex;

  const CategoryList({super.key, 
    required this.categories,
    required this.onSelected,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onSelected(index),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Chip(
                label: Text(
                  categories[index],
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.black,
                  ),
                ),
                backgroundColor: selectedIndex == index ? Colors.orange : Colors.grey[300],
              ),
            ),
          );
        },
      ),
    );
  }
}
