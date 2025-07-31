import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../widgets/category_list.dart';
import '../widgets/food_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<String> categories = ["Pizza", "Burger", "Drinks", "Desserts"];
  List<FoodItem> foodItems = [
    FoodItem(image: 'assets/pizza.jpg', name: 'Pizza', price: 950, rating: 4.5),
    FoodItem(image: 'assets/burger.jpg', name: 'Burger', price: 600, rating: 4.2),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu")),
      body: Column(
        children: [
          CategoryList(
            categories: categories,
            onSelected: (index) {
              setState(() => selectedIndex = index);
            },
            selectedIndex: selectedIndex,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemCount: foodItems.length,
              itemBuilder: (context, index) {
                return FoodCard(
                  item: foodItems[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(item: foodItems[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
